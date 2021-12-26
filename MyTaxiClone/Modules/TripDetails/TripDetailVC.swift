
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
        
        
        let camera = GMSCameraPosition.camera(withLatitude: 38.89399, longitude: -77.03659, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        let path = GMSMutablePath()
        
        path.add(CLLocationCoordinate2D(latitude: 38.893596444352134, longitude: -77.0381498336792))
        path.add(CLLocationCoordinate2D(latitude: 38.89337933372204, longitude: -77.03792452812195))
        path.add(CLLocationCoordinate2D(latitude: 38.89316222242831, longitude: -77.03761339187622))
        path.add(CLLocationCoordinate2D(latitude: 38.893028615148424, longitude: -77.03731298446655))
        path.add(CLLocationCoordinate2D(latitude: 38.892920059048464, longitude: -77.03691601753235))
        path.add(CLLocationCoordinate2D(latitude: 38.892903358095296, longitude: -77.03637957572937))
        path.add(CLLocationCoordinate2D(latitude: 38.89301191422077, longitude: -77.03592896461487))
        path.add(CLLocationCoordinate2D(latitude: 38.89316222242831, longitude: -77.03549981117249))
        path.add(CLLocationCoordinate2D(latitude: 38.89340438498248, longitude: -77.03514575958252))
        path.add(CLLocationCoordinate2D(latitude: 38.893596444352134, longitude: -77.0349633693695))
        
        let polyline = GMSPolyline(path: path)
        polyline.strokeWidth = 3.0
        polyline.strokeColor = .red
        
        polyline.map = mapScreen
        
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
//            mapScreen.isMyLocationEnabled = true
//            mapScreen.settings.myLocationButton = true
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        mapScreen.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
