//
//  HomeVController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import GoogleMaps

class HomeVController: UIViewController {
    
    // MARK: - Properties

    var delegete: HomeControllerDelegete?
    
    @IBOutlet weak var sideMenuButton: UIButton!
    @IBOutlet weak var myLocationButton: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var mapScreen: GMSMapView!
    
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // MARK: - Mapping
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
        let mapView = GMSMapView.map(withFrame: mapScreen.frame, camera: camera)
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        marker.title = "Sydney"
        marker.snippet = "Australia"
        marker.map = mapView
        
        
        configureSideMenuButton()
        customizeMyLocationButton()
        
    }
    
    
    
    
    
    
    // MARK: - Handlers
    
    @objc func handlreMenuToggle(){
        delegete?.handleMenuToggle(forMenuOption: nil)
    }
    
    
    //MARK: - Customizing handlers
    
    func configureSideMenuButton(){
        sideMenuButton.addTarget(nil, action: #selector(handlreMenuToggle), for: .touchUpInside)
        sideMenuButton.layer.masksToBounds = true
        sideMenuButton.layer.cornerRadius = sideMenuButton.frame.width/2
        sideMenuButton.backgroundColor = .white
        
        sideMenuButton.layer.shadowColor = UIColor.black.cgColor
        sideMenuButton.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        sideMenuButton.layer.shadowRadius = 12
        sideMenuButton.layer.shadowOpacity = 0.12
        sideMenuButton.layer.masksToBounds = false
    }
    
    func customizeMyLocationButton(){
        myLocationButton.layer.masksToBounds = true
        myLocationButton.layer.cornerRadius = myLocationButton.frame.width/2
        myLocationButton.backgroundColor = .white
        
        myLocationButton.layer.shadowColor = UIColor.black.cgColor
        myLocationButton.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        myLocationButton.layer.shadowRadius = 12
        myLocationButton.layer.shadowOpacity = 0.12
        myLocationButton.layer.masksToBounds = false
    }
}

