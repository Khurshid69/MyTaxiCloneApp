//
//  HomeVController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import GoogleMaps

class HomeVController: UIViewController, GMSMapViewDelegate {
    
    // MARK: - Properties
    private let locationManager = CLLocationManager()
    var delegete: HomeControllerDelegete?
    
    @IBOutlet weak var sideMenuButton: UIButton!
    @IBOutlet weak var myLocationButton: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var mapScreen: GMSMapView!
    
    // MARK: - Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureSideMenuButton()
        customizeMyLocationButton()
        
        locationManager.delegate = self
        mapScreen.delegate = self
        locationManager.requestWhenInUseAuthorization()
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
    
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        
        // 1
        let geocoder = GMSGeocoder()
        
        // 2
        geocoder.reverseGeocodeCoordinate(coordinate) { response, error in
            guard let address = response?.firstResult(), let lines = address.lines else {
                return
            }
            
            // 3
            self.addressLabel.text = lines.joined(separator: "\n")
            
            // 4
            UIView.animate(withDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
        }
    }
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        reverseGeocodeCoordinate(position.target)
    }
}

// MARK: - CLLocationManagerDelegate
//1
extension HomeVController: CLLocationManagerDelegate {
    // 2
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // 3
        guard status == .authorizedWhenInUse else {
            return
        }
        // 4
        locationManager.startUpdatingLocation()
        
        //5
        mapScreen.isMyLocationEnabled = true
        mapScreen.settings.myLocationButton = true
    }

    // 6
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        
        // 7
        mapScreen.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        
        // 8
        locationManager.stopUpdatingLocation()
    }
}
