
//
//  TripDetailVC.swift
//  MyTaxiClone
//
//  Created by user on 20/12/21.

import UIKit
import GoogleMaps

enum TripDetailSection: Int, CaseIterable {
    case carStatus = 0
    case tripHistory
    case driver
    case paymentMethod
    case costCalculation
    case totalCost
}

class TripMapViewController: BaseViewController {
    private(set) lazy var mapView: GMSMapView = {
        let view = GMSMapView(frame: view.frame)
        view.delegate = self
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var tripDetailsVC: TripDetailsViewController = {
        let viewController = TripDetailsViewController()
        
        return viewController
    }()
    
    private lazy var locationManager: CLLocationManager = {
        let manager = CLLocationManager()
        manager.delegate = self
        
        return manager
    }()
    
    private lazy var panController: PanModalController = {
        var settings = PanModalController.Settings()
        settings.distanceFull = 0
        settings.distancePartial = UIScreen.main.bounds.height * 0.4
        
        return PanModalController(parentView: view,
                           childView: tripDetailsVC.view,
                           scrollView: tripDetailsVC.tableView,
                           settings: settings)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCustomBackButton()
        setupSubviews()
        panController.build()
        view.backgroundColor = .white
        locationManager.requestWhenInUseAuthorization()
        
        let path = GMSMutablePath()
        path.addLatitude(-37.81319, longitude: 144.96298)
        path.addLatitude(-31.95285, longitude: 115.85734)
        let polyline = GMSPolyline(path: path)
        polyline.strokeWidth = 10.0
        polyline.geodesic = true
        polyline.map = mapView
    }
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        GMSGeocoder().reverseGeocodeCoordinate(coordinate) { response, error in
            UIView.animate(withDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
        }
    }
}

extension TripMapViewController: GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        reverseGeocodeCoordinate(position.target)
    }
}

extension TripMapViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        guard status == .authorizedWhenInUse else { return }
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else { return }
        
        mapView.camera = GMSCameraPosition(target: location.coordinate, zoom: 15, bearing: 0, viewingAngle: 0)
        locationManager.stopUpdatingLocation()
    }
}
