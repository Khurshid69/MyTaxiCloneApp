/*
 PanModalController

 Copyright (c) 2020 Bilal Bakhrom

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import UIKit

public protocol PanModalControllerProtocol {
    /// Keeps constants
    var settings: PanModalController.Settings { get set }
    
    /// Container that holds child view
    var containerView: UIView  { get }
    
    /// Sets reference between parent view, child view and container view
    func build()
    
    /// Listens view's scroll (up/down)
    ///
    /// - Parameter completion: The callback called on scroll
    func bind(didScroll: @escaping (_ yPos: CGFloat, _ percentage: CGFloat) -> Void)
    
    /// Updates scrollView instance
    ///
    /// - Parameter newScrollView: The new scrollView
    func update(scrollView newScrollView: UIScrollView)
    
    /// Updates view to full screen mode
    func makeFullScreen()
}

open class PanModalController: NSObject {
    /// Keeps constants
    public var settings: Settings
    /// Scrollable view will placed on parent view
    private let parentView: UIView
    /// The view that holds UI elements and scroll View
    private let childView: UIView
    /// The scroll view (table view) inside child view
    private var scrollView: UIScrollView
    /// This need to track scroll view's  y offset
    private var scrollViewYOffset: CGFloat = 0.0
    /// Observes scroll view's content offset
    private var scrollObserver: NSKeyValueObservation?
    /// Sends information about minimum `y` position of content view
    private var didScroll: ((_ yPosition: CGFloat, _ percentage: CGFloat) -> Void)?
    /// Container view's pan gesture
    private lazy var panGestureRecognizer: UIPanGestureRecognizer = {
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture))
        panGesture.minimumNumberOfTouches = 1
        panGesture.maximumNumberOfTouches = 1
        panGesture.delegate = self
        
        return panGesture
    }()
    /// Container that holds child view
    private(set) lazy public var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.roundCorners([.topLeft, .topRight], radius: settings.contentViewCornerRadius)
        view.clipsToBounds = true
        view.addGestureRecognizer(panGestureRecognizer)
        
        return view
    }()
    /// Minimum `y` position of container view
    private var currentYPosition: CGFloat {
        return containerView.frame.minY
    }
    
    /// The child view should be inside parent view and scroll view is subview of child view.
    ///
    /// - Parameter parentView: The root view controller
    /// - Parameter childView: The view where the scroll view and UI elements are located
    /// - Parameter scrollView: The scroll view of root view
    /// - Parameter settings: The settings
    init(
        parentView: UIView,
        childView: UIView,
        scrollView: UIScrollView,
        settings: Settings = Settings()
    ) {
        self.parentView = parentView
        self.childView = childView
        self.scrollView = scrollView
        self.settings = settings
        super.init()
        
        observe(scrollView: scrollView)
        addViews()
    }
    
    deinit {
        scrollObserver?.invalidate()
    }
    
    private func addViews() {
        parentView.addSubview(containerView)
        containerView.addSubview(childView)
    }
    
    private func setContainerViewFrame() {
        let origin = CGPoint(x: 0, y: settings.distancePartial)
        let size = CGSize(
            width: parentView.frame.width,
            height: parentView.frame.height - (settings.distanceFull + settings.tabBarHeight)
        )
        
        containerView.frame = CGRect(origin: origin, size: size)
    }
    
    private func setChildViewConstraints() {
        childView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            childView.topAnchor.constraint(equalTo: containerView.topAnchor),
            childView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            childView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            childView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
}

extension PanModalController: UIGestureRecognizerDelegate {
    /// Do not require any other gesture recognizers to fail
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldBeRequiredToFailBy otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
    
    /// Allow simultaneous gesture recognizers only when the other gesture recognizer's view is the pan scrollable view
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return otherGestureRecognizer.view == scrollView
    }
}

extension PanModalController: PanModalControllerProtocol {
    public func build() {
        setContainerViewFrame()
        setChildViewConstraints()
        
        parentView.bringSubviewToFront(containerView)
    }
    
    /// Listens view's scroll (up/down)
    ///
    /// - Parameter completion: The callback called on scroll
    public func bind(didScroll: @escaping (_ yPos: CGFloat, _ percentage: CGFloat) -> Void) {
        self.didScroll = didScroll
    }
    
    public func makeFullScreen() {
        adjust(toYPosition: settings.distanceFull)
    }
    
    public func update(scrollView newScrollView: UIScrollView) {
        scrollView.setContentOffset(.zero, animated: true)
        scrollView = newScrollView
        
        observe(scrollView: newScrollView)
        newScrollView.setContentOffset(.zero, animated: false)
    }
}

extension PanModalController {
    @objc func handlePanGesture(_ recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
        case .began, .changed:
            shouldUpdateOrigin(using: recognizer)
            
        default:
            autoUpdateOrigin()
        }
        
        recognizer.setTranslation(.zero, in: containerView)
    }
    
    /// Update container view's position
    ///
    /// - Parameter recognizer: Pan gesture
    fileprivate func shouldUpdateOrigin(using recognizer: UIPanGestureRecognizer) {
        // Check whether tableView's first row is visible or not
        guard scrollView.contentOffset.y <= 0 else { return }
        // Y position of user touch in current view
        var deltaY = recognizer.translation(in: containerView).y
        // If the view is not anchored to long form, reduce the rate of movement above the threshold
        deltaY = (containerView.frame.origin.y < settings.distanceFull) ?  (deltaY / 2.0) : deltaY
        // New y position
        let yPosition = max(settings.distanceFull, (currentYPosition + deltaY))
        // Check whether y position crossed partial view or not
        if yPosition > settings.distancePartial {
            didScrollDown(toYPosition: yPosition)
        } else {
            adjust(toYPosition: yPosition)
        }
    }
    
    /// Updates view's origin `y` position from `minY` position of view
    fileprivate func autoUpdateOrigin() {
        // Distance from full view
        let d0 = abs(currentYPosition - settings.distanceFull)
        // Distance from partial view
        let d1 = abs(currentYPosition - settings.distancePartial)
        // New y position
        let yPosition = (d0 > d1) ? settings.distancePartial : settings.distanceFull
        
        animate { [self] in
            adjust(toYPosition: yPosition)
        }
    }
    
    /// Controls if user scrolls down continuously and crosses partial view
    ///
    /// - Parameter yPosition: The current y position
    fileprivate func didScrollDown(toYPosition yPosition: CGFloat) {
        /// Current y position in allowed area (starts from zero to max height)
        let yDisplacement = (yPosition - settings.distancePartial)
        /// The current y position in percentage (between 0.0 and 1.0)
        let percentage = yDisplacement / settings.maxDepth
        /// Halt scrolling if reached max height
        guard percentage < 1.0 else { return }
        
        animate { [self] in
            adjust(toYPosition: yPosition)
        }
    }
    
    /// Updates view's origin y
    fileprivate func adjust(toYPosition yPosition: CGFloat) {
        containerView.frame.origin.y = yPosition
        
        let percentage = calculatePercentage(yPosition)
        updateContainerViewCornerRadius(percentage)
        didScroll?(yPosition, percentage)
    }
    
    /// Finds current view's `minY` position in percentage
    ///
    /// Partial screen is 0% and full screen is 100%. The percentage number will be calculated based on
    /// screen position between partial and full.
    ///
    /// - Parameter yPosition: categories view's `minY`
    /// - Returns: Returns number between 0.0 and 1.0
    fileprivate func calculatePercentage(_ yPosition: CGFloat) -> CGFloat {
        let upperBound = settings.distancePartial
        let lowerBound = settings.distanceFull
        return (1.0 - (yPosition - lowerBound) / (upperBound - lowerBound))
    }
    
    /// Updates view's origin y with animation
    fileprivate func animate(completion: @escaping () -> Void) {
        childView.layer.removeAllAnimations()
        UIView.animate(
            withDuration: settings.animationDuration,
            delay: 0.0,
            usingSpringWithDamping: settings.springWithDamping,
            initialSpringVelocity: 0.0,
            options: [.curveEaseInOut, .allowUserInteraction, .beginFromCurrentState],
            animations: completion
        )
    }
    
    fileprivate func updateContainerViewCornerRadius(_ percentage: CGFloat) {
        guard settings.shouldUpdatesCornerRadius else { return }
        var radius = settings.contentViewCornerRadius * (1.0 - percentage)
        radius = radius > settings.contentViewCornerRadius ? settings.contentViewCornerRadius : radius
        containerView.roundCorners([.topLeft, .topRight], radius: radius)
    }
}

fileprivate extension PanModalController {
    /// Observes content offset of scroll view
    ///
    /// - Parameter scrollView: The scroll view to observe its data
    func observe(scrollView: UIScrollView) {
        scrollObserver = scrollView.observe(\.contentOffset, options: .old) { [weak self] scrollView, dynamic in
            self?.scrollViewDidScroll(scrollView)
        }
    }
    
    /// Controls child view's position between full screen and partial screen
    ///
    /// - Parameter scrollView: The scroll view to be controlled
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if containerView.frame.minY > settings.distanceFull {
            haltScrolling(scrollView)
        } else {
            trackScrolling(scrollView)
        }
    }
    
    func haltScrolling(_ scrollView: UIScrollView) {
        scrollView.setContentOffset(CGPoint(x: 0, y: scrollViewYOffset), animated: false)
    }
    
    func trackScrolling(_ scrollView: UIScrollView) {
        scrollViewYOffset = max(scrollView.contentOffset.y, 0)
    }
}

extension PanModalController {
    public struct Settings {
        /// Full  screen constant. The constant is between screen's top position and container view's top position
        public var distanceFull: CGFloat = 100.0
        /// Partial screen constant. The constant is between screen's top position and container view's top position
        public var distancePartial: CGFloat = 264.0 {
            didSet {
                guard distancePartial < distanceFull else { return }
                distanceFull = distancePartial
            }
        }
        /// Allowed height to scroll bottom
        public var maxDepth: CGFloat {
            return (UIScreen.main.bounds.height - distancePartial) / 3
        }
        /// Scroll animation duration
        public var animationDuration: TimeInterval = 0.5
        /// Scroll damp
        public var springWithDamping: CGFloat = 0.8
        /// Container view's corner radius
        public var contentViewCornerRadius: CGFloat = 20.0
        /// Current devices tab bar height
        public var tabBarHeight: CGFloat = 0.0
        /// Enable/Disable corner radius update on scroll
        public var shouldUpdatesCornerRadius: Bool = true
    }
}

fileprivate extension UIView {
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        clipsToBounds = true
        layer.cornerRadius = radius
        layer.maskedCorners = CACornerMask(rawValue: corners.rawValue)
    }
}
