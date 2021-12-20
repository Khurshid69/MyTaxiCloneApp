//
//  MainViewController.swift
//  MyTaxiClone
//
//  Created by user on 20/12/21.
//

import UIKit
import GoogleMaps

class MainViewController: UIViewController, GMSMapViewDelegate {
    
    // MARK: - Properties
    
    private let locationManager = CLLocationManager()
    weak var delegete: HomeControllerDelegete?
    
    
    lazy var mapScreen: GMSMapView = {
        let mapScreen = GMSMapView()
        mapScreen.delegate = self
        view.addSubview(mapScreen)
        return mapScreen
    }()
    
    //Bottom
    
    var bottomView: UIView = {
        var bottomView = UIView()
        bottomView.frame = CGRect(x: 0, y: 0, width: 343, height: 118)
        bottomView.backgroundColor = .white
        bottomView.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        
        
        var parent = self.view!
        
        parent.addSubview(bottomView)
        
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        bottomView.widthAnchor.constraint(equalToConstant: 375).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: 147).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
        bottomView.topAnchor.constraint(equalTo: parent.topAnchor, constant: 665).isActive = true

        return bottomView
    }()
    
    var locationViewer: UILabel = {
        var locationViewer = UILabel()
        
        locationViewer.frame = CGRect(x: 0, y: 0, width: 343, height: 105)
        locationViewer.backgroundColor = .white
        locationViewer.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor

        var parent = self.view!
        parent.addSubview(locationViewer)

        locationViewer.translatesAutoresizingMaskIntoConstraints = false
        locationViewer.widthAnchor.constraint(equalToConstant: 343).isActive = true
        locationViewer.heightAnchor.constraint(equalToConstant: 105).isActive = true
        locationViewer.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
        locationViewer.topAnchor.constraint(equalTo: parent.topAnchor, constant: 16).isActive = true

        return locationViewer
    }()
    
    
    //MARK: - Red light Pin
    
    var redLightPin: UIImageView = {
        var redLightPin = UIImageView()
        redLightPin.image = UIImage(named: "")
        redLightPin.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        redLightPin.backgroundColor = .white
        
        var parent = self.view!
        
        parent.addSubview(redLightPin)
        
        redLightPin.translatesAutoresizingMaskIntoConstraints = false
        redLightPin.widthAnchor.constraint(equalToConstant: 24).isActive = true
        redLightPin.heightAnchor.constraint(equalToConstant: 24).isActive = true
        redLightPin.centerXAnchor.constraint(equalTo: parent.centerXAnchor, constant: -147.5).isActive = true
        redLightPin.topAnchor.constraint(equalTo: parent.topAnchor, constant: 30).isActive = true
        
        
        return redLightPin
    }()
    
    
    var streetLabel: UILabel = {
        var streetLabel = UILabel()
   
        streetLabel.frame = CGRect(x: 0, y: 0, width: 196, height: 17)
        streetLabel.backgroundColor = .white
        streetLabel.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        streetLabel.font = UIFont(name: "Lato-Bold", size: 14)
        streetLabel.text = "5a улица Асадуллы Ходжаева"
        
        var parent = self.view!

        parent.addSubview(streetLabel)
        streetLabel.translatesAutoresizingMaskIntoConstraints = false
        streetLabel.widthAnchor.constraint(equalToConstant: 196).isActive = true
        streetLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        streetLabel.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 60).isActive = true
        streetLabel.topAnchor.constraint(equalTo: parent.topAnchor, constant: 34).isActive = true

        return streetLabel
    }()
    
    
    //MARK: - blueEllipse
    var blueEllipse: UIImageView = {
        var blueEllipse = UIImageView()
        blueEllipse.image = UIImage(named: "Frame 620")
        blueEllipse.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        blueEllipse.backgroundColor = .white

        var parent = self.view!

        parent.addSubview(blueEllipse)
        blueEllipse.translatesAutoresizingMaskIntoConstraints = false
        blueEllipse.widthAnchor.constraint(equalToConstant: 24).isActive = true
        blueEllipse.heightAnchor.constraint(equalToConstant: 24).isActive = true
        blueEllipse.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 28).isActive = true
        blueEllipse.topAnchor.constraint(equalTo: parent.topAnchor, constant: 83).isActive = true

        return blueEllipse
    }()
    
    //MARK: - whereLabel
    var whereLabel: UILabel = {
        var whereLabel = UILabel()
        whereLabel.frame = CGRect(x: 0, y: 0, width: 38, height: 17)
        whereLabel.backgroundColor = .white
        whereLabel.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        whereLabel.font = UIFont(name: "Lato-Bold", size: 14)
        whereLabel.text = "Куда?"
        
        var parent = self.view!
        parent.addSubview(whereLabel)
        
        whereLabel.translatesAutoresizingMaskIntoConstraints = false
        whereLabel.widthAnchor.constraint(equalToConstant: 38).isActive = true
        whereLabel.heightAnchor.constraint(equalToConstant: 17).isActive = true
        whereLabel.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 60).isActive = true
        whereLabel.topAnchor.constraint(equalTo: parent.topAnchor, constant: 87).isActive = true


        return whereLabel
    }()
    
    //MARK: - vector frame
    var letsGoButton: UIButton = {
        var letsGoButton = UIButton()
    
        letsGoButton.frame = CGRect(x: 0, y: 0, width: 60, height: 52)
        letsGoButton.backgroundColor = .white
        letsGoButton.layer.backgroundColor = UIColor(red: 0.9, green: 0.899, blue: 0.891, alpha: 1).cgColor

        var parent = self.view!
        parent.addSubview(letsGoButton)
        
        letsGoButton.translatesAutoresizingMaskIntoConstraints = false
        letsGoButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        letsGoButton.heightAnchor.constraint(equalToConstant: 52).isActive = true
        letsGoButton.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 299).isActive = true
        letsGoButton.topAnchor.constraint(equalTo: parent.topAnchor, constant: 69).isActive = true

        return letsGoButton
    }()
    
    
    //MARK: - vector Image
    
    var vectorImage: UIImageView = {
        var vectorImage = UIImageView()
        vectorImage.image = UIImage(named: "Vector")
        vectorImage.frame = CGRect(x: 0, y: 0, width: 17.33, height: 8.67)
        vectorImage.backgroundColor = .white

        var stroke = UIView()

        stroke.bounds = vectorImage.bounds.insetBy(dx: -1, dy: -1)
        stroke.center = vectorImage.center
        vectorImage.addSubview(stroke)
        vectorImage.bounds = vectorImage.bounds.insetBy(dx: -1, dy: -1)
        stroke.layer.borderWidth = 2
        stroke.layer.borderColor = UIColor(red: 0.463, green: 0.463, blue: 0.463, alpha: 1).cgColor
        
        var parent = self.view!
        parent.addSubview(vectorImage)
        vectorImage.translatesAutoresizingMaskIntoConstraints = false

        return vectorImage
    }()
    
    
    //MARK: - Navigation Button
    
    var btnHamburger: UIButton = {
        var btnHamburger = UIButton()
        btnHamburger.imageView = UIImage(named: "")
        btnHamburger.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        btnHamburger.backgroundColor = .white
        btnHamburger.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        
        var parent = self.view!
        parent.addSubview(btnHamburger)
        
        btnHamburger.translatesAutoresizingMaskIntoConstraints = false
        btnHamburger.widthAnchor.constraint(equalToConstant: 40).isActive = true
        btnHamburger.heightAnchor.constraint(equalToConstant: 40).isActive = true
        btnHamburger.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
        btnHamburger.topAnchor.constraint(equalTo: parent.topAnchor, constant: 48).isActive = true
        
        return btnHamburger
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.delegate = self
        locationManager.requestWhenInUseAuthorization()
        
        
    }
    
    private func reverseGeocodeCoordinate(_ coordinate: CLLocationCoordinate2D) {
        // 1
        let geocoder = GMSGeocoder()
        // 2
        geocoder.reverseGeocodeCoordinate(coordinate) { response, error in
            guard let address = response?.firstResult(), let lines = address.lines else { return }
            self.streetLabel.text = lines.joined(separator: "\n")
            
            UIView.animate(withDuration: 0.25) {
                self.view.layoutIfNeeded()
            }
        }
    }
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        reverseGeocodeCoordinate(position.target)
    }
    
    
    @IBAction func myRealLocationButton(_ sender: Any) {
        
        // MARK: - FOR myLocation
        
    }
    
    // MARK: - Handlers
    
    @objc func handlreMenuToggle(){
        delegete?.handleMenuToggle(forMenuOption: nil)
    }
    
}

extension MainViewController: CLLocationManagerDelegate {
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
