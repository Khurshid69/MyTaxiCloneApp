
////
////  TripDetailVC.swift
////  MyTaxiClone
////
////  Created by user on 20/12/21.
//
//
import UIKit
import GoogleMaps

enum TripDetailSections: Int, CaseIterable {
    case carStatus = 0
    case tripHistory
    case driver
    case paymentMethod
    case costCalculation
    case totalCost
}

class TripDetailVC: UIViewController, GMSMapViewDelegate {
    // MARK: - Properties
    
    private let locationManager = CLLocationManager()
    weak var delegete: HomeViewControllerDelegete?
    
    lazy var mapScreen: GMSMapView = {
        let mapScreen = GMSMapView()
        mapScreen.delegate = self
        mapScreen.translatesAutoresizingMaskIntoConstraints = false
        
        return mapScreen
    }()
    
    private lazy var containerVC: ContainerVC = {
        return ContainerVC()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view = mapScreen
        mapScreen.delegate = self
        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        
    }
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        // 1
        let geocoder = GMSGeocoder()
        // 2
        geocoder.reverseGeocodeCoordinate(coordinate) { response, error in
            //                guard let address = response?.firstResult(),
            //                      let lines = address.lines else { return }
            
            UIView.animate(withDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
        }
    }
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        reverseGeocodeCoordinate(position.target)
    }
    
}

extension TripDetailVC: CLLocationManagerDelegate {
    // 2
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        // 3
        guard status == .authorizedWhenInUse else { return }
        locationManager.startUpdatingLocation()
            mapScreen.isMyLocationEnabled = true
            mapScreen.settings.myLocationButton = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        mapScreen.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
