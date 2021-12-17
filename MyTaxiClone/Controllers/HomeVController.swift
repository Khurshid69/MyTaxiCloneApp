//
//  HomeVController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit

class HomeVController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var sideMenuButton: UIButton!
    
    
    var delegete: HomeControllerDelegete?
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureNavigationBar()
        
        
        
    }
    
    
    
    
    
    
    // MARK: - Handlers
    
    @objc func handlreMenuToggle(){
        delegete?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar(){
        
        
        sideMenuButton.addTarget(nil, action: #selector(handlreMenuToggle), for: .touchUpInside)
        sideMenuButton.layer.masksToBounds = true
        sideMenuButton.layer.cornerRadius = sideMenuButton.frame.width/2
        sideMenuButton.backgroundColor = .white
        

        sideMenuButton.layer.shadowColor = UIColor.black.cgColor
        sideMenuButton.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        sideMenuButton.layer.shadowRadius = 8
        sideMenuButton.layer.shadowOpacity = 0.5
        sideMenuButton.layer.masksToBounds = false


        
    }
    
    
}


