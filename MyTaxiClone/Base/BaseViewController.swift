//
//  BaseViewController.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        view.backgroundColor = .white
    }
    
    func setupCustomBackButton(withTitle title: String) {
        let width = width(ofText: title) + 36
        let backButton = UIButton(frame: .init(origin: .zero, size: .init(width: width, height: .leastNonzeroMagnitude)))
        backButton.setImage(UIImage(named: "icon_arrow_back")?.withRenderingMode(.alwaysTemplate), for: .normal)
        backButton.setTitle(title, for: .normal)
        backButton.setTitleColor(UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1), for: .normal)
        backButton.tintColor = .black
        backButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        backButton.imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 12)
        backButton.titleEdgeInsets = .init(top: 0, left: 12, bottom: 0, right: 0)
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = barButtonItem
    }
    
    func setupCustomBackButton() {
        let size: CGFloat = 36
        let backButton = UIButton(frame: .init(origin: .zero, size: .init(width: size, height: size)))
        backButton.setImage(UIImage(named: "icon_arrow_back")?.withRenderingMode(.alwaysTemplate), for: .normal)
        backButton.layer.cornerRadius = size / 2
        backButton.tintColor = .black
        backButton.backgroundColor = .white
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = barButtonItem
    }
    
    @objc private func backButtonClicked() {
        navigationController?.popViewController(animated: true)
    }
    
    private func width(ofText text: String) -> CGFloat {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.text = text
        label.sizeToFit()
        
        return label.bounds.width
    }
}

@objc extension BaseViewController {
    func setupSubviews() {
        embedSubviews()
        setSubviewsConstraints()
    }
    
    func embedSubviews() {}
    
    func setSubviewsConstraints() {}
}
