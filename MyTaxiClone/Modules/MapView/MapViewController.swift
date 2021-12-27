//
//  MapViewController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import GoogleMaps


class MapViewController: BaseViewController, GMSMapViewDelegate {
    private(set) lazy var mapView: GMSMapView = {
        let view = GMSMapView(frame: view.frame)
        view.padding = UIEdgeInsets(top: 0, left: 0, bottom: 120, right: 0)
        
        return view
    }()
    
    private(set) lazy var sideMenuButton: UIButton = {
        let view = UIButton(frame: .init(origin: .zero, size: dwgConst.sideMenuButtonSize))
        view.setImage(UIImage(named: "icon_side_menu"), for: .normal)
        view.setImage(UIImage(named: "icon_side_menu"), for: .highlighted)
        view.backgroundColor = .white
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        view.layer.shadowOpacity = 0.10
        view.layer.masksToBounds = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var marker: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "icon_marker")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var bottomView: UIView = {
        let view = DirectionBottomView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var myLocationButton: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 6.0)
        view.layer.shadowRadius = 12
        view.layer.shadowOpacity = 0.10
        view.layer.masksToBounds = false
        view.addTarget(self, action: #selector(myLocationButtonClicked), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var addressLabel: UILabel = {
        let view = DirectionBottomView()
        var address = view.locationViewerLabel
        
        return address
    }()
    
    weak var delegete: HomeViewControllerDelegete?
    private let locationManager = CLLocationManager()
    private(set) var dwgConst = DrawingConstants()    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
        sideMenuButton.addTarget(self, action: #selector(sideMenuButtonClicked), for: .touchUpInside)
        locationManager.delegate = self
        mapView.delegate = self
        locationManager.requestWhenInUseAuthorization()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
    
    @objc private func myLocationButtonClicked( ) {
        // MARK: - FOR myLocation
    }
    
    // MARK: - Handlers
    @objc func sideMenuButtonClicked(){
        delegete?.handleMenuToggle(forMenuOption: nil)
    }
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        GMSGeocoder().reverseGeocodeCoordinate(coordinate) { response, error in
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
extension MapViewController: CLLocationManagerDelegate {
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
