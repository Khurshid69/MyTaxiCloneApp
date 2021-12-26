//
//  ContainerController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import Foundation
import UIKit


class ContainterController: UIViewController {
    var menuController: MenuViewController!
    var centerController: UIViewController!
    var isExpended = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    func configureHomeController() {
        let mapViewController = MapViewController()
        mapViewController.delegete = self
        centerController = UINavigationController(rootViewController: mapViewController)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController(){
        guard menuController == nil else { return }
        // Add our menu controller here.
        menuController = MenuViewController()
        menuController.delegete = self
        view.insertSubview(menuController.view, at: 0)
        addChild(menuController)
        menuController.didMove(toParent: self)
        print("Did Add Menu Bar")
    }
    
    func didSelectMenuOption(menuOption: MenuOption){
        switch menuOption {
        case .TripHistory:
            let vc = TripHistoryViewController()
            navigationController?.pushViewController(vc, animated: true)
            
        case .TripDetail:
            print("Show Способы оплаты ")
            
        case .Settings:
            print("Show Избранные адреса")
        }
    }
}

extension ContainterController: HomeViewControllerDelegete{
    func handleMenuToggle(forMenuOption menuOption: MenuOption?) {
        if !isExpended {
            configureMenuController()
        }
        
        isExpended = !isExpended
        moveViewWithAnimation(shouldExpand: isExpended, menuOption: menuOption)
    }
    
    private func moveViewWithAnimation(shouldExpand: Bool, menuOption: MenuOption?) {
        let visibleWidth = UIScreen.main.bounds.width * 0.15
        centerController.view.transform = .identity
        
        animate { [self] in
            centerController.view.frame.origin.x = shouldExpand ? centerController.view.frame.width - visibleWidth : 0
            centerController.view.transform = shouldExpand ? CGAffineTransform(scaleX: 0.9, y: 0.9) : .identity
            centerController.view.layer.cornerRadius = shouldExpand ? 12 : 0
        } completion: { [self] in
            guard !shouldExpand else { return }
            guard let menuOption = menuOption else { return }
            self.didSelectMenuOption(menuOption: menuOption)
        }
    }
    
    private func animate(_ animation: @escaping () -> Void, completion: (() -> Void)? = nil) {
        UIView.animate(withDuration: 0.25,
                       delay: 0,
                       options: [.curveEaseInOut],
                       animations: animation,
                       completion: ({ _ in completion?() }))
    }
}
