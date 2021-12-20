//
//  ContainerController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import Foundation
import UIKit

class ContainterController: UIViewController {
    
    // MARK: - Properties
    
    var menuController: MenuController!
    var centerController: UIViewController!
    var isExpended = false
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
        
    }
    
    // MARK: - Handlers
    
    func configureHomeController(){
        let homeController = HomeVController()
        homeController.delegete = self
        centerController = UINavigationController(rootViewController: homeController)
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
    }
    
    func configureMenuController(){
        if menuController == nil{
            // add our menu controller here
            menuController = MenuController()
            menuController.delegete = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did Add Menu Bar")
        }
    }
    
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?){
        // show menu
        if shouldExpand{
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: { [self] in
                
                self.centerController.view.frame.origin.x = centerController.view.frame.width - 60
                
            }, completion: nil)
        }else{
            // hide menu
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                
            }, completion: nil)
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
    }
    
    func callTripHistory(){
        let vc = TripHistoryTableView(nibName: "TripHistoryTableView", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func didSelectMenuOption(menuOption: MenuOption){
        switch menuOption {
        case .TripHistory:
            
            print("Show Мои поездки")
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
        animatePanel(shouldExpand: isExpended, menuOption: menuOption)
    }
    
    
    
    
}
