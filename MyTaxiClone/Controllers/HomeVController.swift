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
    weak var delegete: HomeViewControllerDelegete?
    
    
    @IBOutlet weak var sideMenuButton: UIButton!
    @IBOutlet weak var myLocationButtonReal: UIButton!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var mapScreen: GMSMapView!
    
    // MARK: - Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let imageV = UIImageView(frame: CGRect(x: 0, y: 0, width: 30, height:38))
        imageV.image = UIImage(named: "Group 21403")
        mapScreen.addSubview(imageV)
        imageV.snp.makeConstraints { make in
            make.center.equalTo(mapScreen)
            make.size.equalTo(CGSize(width: 40, height: 58))
        }
        
        
        
        mapScreen.padding = UIEdgeInsets(top: 0, left: 0, bottom: 30, right: 0)
        
        configureSideMenuButton()
        customizeMyLocationButton()
        
        locationManager.delegate = self
        mapScreen.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
    }

    
    @IBAction func myRealLocationButton(_ sender: Any) {
        
        // MARK: - FOR myLocation
        
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
        sideMenuButton.layer.shadowOpacity = 0.10
        sideMenuButton.layer.masksToBounds = false
        
        sideMenuButton.snp.makeConstraints { make in
            make.left.top.equalTo(mapScreen).offset(10)
            make.top.equalTo(mapScreen).offset(5)
        }
    }
    
    
    func customizeMyLocationButton(){
        myLocationButtonReal.layer.masksToBounds = true
        myLocationButtonReal.layer.cornerRadius = myLocationButtonReal.frame.width/2
        myLocationButtonReal.backgroundColor = .white
        
        myLocationButtonReal.layer.shadowColor = UIColor.black.cgColor
        myLocationButtonReal.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        myLocationButtonReal.layer.shadowRadius = 12
        myLocationButtonReal.layer.shadowOpacity = 0.10
        myLocationButtonReal.layer.masksToBounds = false
    }
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        // 1
        let geocoder = GMSGeocoder()
        // 2
        geocoder.reverseGeocodeCoordinate(coordinate) { response, error in
            guard let address = response?.firstResult(), let lines = address.lines else { return }
            self.addressLabel.text = lines.joined(separator: "\n")
            
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
        guard status == .authorizedWhenInUse else { return }
        locationManager.startUpdatingLocation()
        //        mapScreen.isMyLocationEnabled = true
        //        mapScreen.settings.myLocationButton = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        mapScreen.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
