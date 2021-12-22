import UIKit
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
        bottomView.translatesAutoresizingMaskIntoConstraints = false

        return bottomView
    }()

    // Location Viewer

    var locationViewer: UILabel = {
        var locationViewer = UILabel()

        locationViewer.frame = CGRect(x: 0, y: 0, width: 343, height: 105)
        locationViewer.backgroundColor = .white
        locationViewer.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        locationViewer.translatesAutoresizingMaskIntoConstraints = false

        return locationViewer
    }()


    //MARK: - Red light Pin

    var redLightPin: UIImageView = {
        var redLightPin = UIImageView()
        redLightPin.image = UIImage(named: "light red pin-1")
        redLightPin.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        redLightPin.backgroundColor = .white
        redLightPin.translatesAutoresizingMaskIntoConstraints = false

        return redLightPin
    }()


    var streetLabel: UILabel = {
        var streetLabel = UILabel()

        streetLabel.frame = CGRect(x: 0, y: 0, width: 196, height: 17)
        streetLabel.backgroundColor = .white
        streetLabel.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        streetLabel.font = UIFont(name: "Lato-Bold", size: 14)
        streetLabel.text = "5a улица Асадуллы Ходжаева"
        streetLabel.translatesAutoresizingMaskIntoConstraints = false

        return streetLabel
    }()


    //MARK: - blueEllipse
    var blueEllipse: UIImageView = {
        var blueEllipse = UIImageView()
        blueEllipse.image = UIImage(named: "Frame 620")
        blueEllipse.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        blueEllipse.backgroundColor = .white
        blueEllipse.translatesAutoresizingMaskIntoConstraints = false

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
        whereLabel.translatesAutoresizingMaskIntoConstraints = false

        return whereLabel
    }()

    //MARK: - vector frame
    var letsGoButton: UIButton = {
        var letsGoButton = UIButton()
        letsGoButton.setImage(UIImage(named: "Vector"), for: .normal)
        letsGoButton.frame = CGRect(x: 0, y: 0, width: 60, height: 52)
        letsGoButton.backgroundColor = .white
        letsGoButton.layer.backgroundColor = UIColor(red: 0.9, green: 0.899, blue: 0.891, alpha: 1).cgColor
        letsGoButton.translatesAutoresizingMaskIntoConstraints = false


        return letsGoButton
    }()


    //MARK: - vector Image

    var vectorImage: UIImageView = {
        var vectorImage = UIImageView()
        vectorImage.image = UIImage(named: "Vector")
        vectorImage.frame = CGRect(x: 0, y: 0, width: 17.33, height: 8.67)

        var stroke = UIView()
        stroke.bounds = vectorImage.bounds.insetBy(dx: -1, dy: -1)
        stroke.center = vectorImage.center
        vectorImage.addSubview(stroke)
        vectorImage.bounds = vectorImage.bounds.insetBy(dx: -1, dy: -1)
        stroke.layer.borderWidth = 2
        stroke.layer.borderColor = UIColor(red: 0.463, green: 0.463, blue: 0.463, alpha: 1).cgColor
        vectorImage.translatesAutoresizingMaskIntoConstraints = false


        return vectorImage
    }()


    //MARK: - Navigation Button

    var btnHamburger: UIButton = {
        var btnHamburger = UIButton()
        btnHamburger.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        btnHamburger.backgroundColor = .white
        btnHamburger.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        btnHamburger.translatesAutoresizingMaskIntoConstraints = false

        return btnHamburger
    }()


    // MARK: - Embed subviews.

    func embedSubViews(){
        view.addSubview(mapScreen)
    }
    //
    //
    //    // MARK: -  Setup constraints.
    //
    func bottomViewConstraints(){
        NSLayoutConstraint.activate([
            bottomView.widthAnchor.constraint(equalToConstant: 375),
            bottomView.heightAnchor.constraint(equalToConstant: 147),
            bottomView.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 0),
            bottomView.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 665)
        ])
    }

    func locationViewConstraints(){
        NSLayoutConstraint.activate([
            locationViewer.widthAnchor.constraint(equalToConstant: 343),
            locationViewer.heightAnchor.constraint(equalToConstant: 105),
            locationViewer.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 16),
            locationViewer.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 16)

        ])
    }

    func redPinConstraints(){
        NSLayoutConstraint.activate([
            redLightPin.widthAnchor.constraint(equalToConstant: 24),
            redLightPin.heightAnchor.constraint(equalToConstant: 24),
            redLightPin.centerXAnchor.constraint(equalTo: mapScreen.centerXAnchor, constant: -147.5),
            redLightPin.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 30)

        ])
    }

    func streetLabelConstraints(){
        NSLayoutConstraint.activate([
            streetLabel.widthAnchor.constraint(equalToConstant: 196),
            streetLabel.heightAnchor.constraint(equalToConstant: 17),
            streetLabel.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 60),
            streetLabel.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 34)

        ])
    }

    func blueImageConstraints(){
        NSLayoutConstraint.activate([
            blueEllipse.widthAnchor.constraint(equalToConstant: 24),
            blueEllipse.heightAnchor.constraint(equalToConstant: 24),
            blueEllipse.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 28),
            blueEllipse.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 83)
        ])
    }

    func whereLabelContstaints(){
        NSLayoutConstraint.activate([
            whereLabel.widthAnchor.constraint(equalToConstant: 38),
            whereLabel.heightAnchor.constraint(equalToConstant: 17),
            whereLabel.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 60),
            whereLabel.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 87)
        ])
    }

    func letsGoBtnConstraints(){
        NSLayoutConstraint.activate([
            letsGoButton.widthAnchor.constraint(equalToConstant: 60),
            letsGoButton.heightAnchor.constraint(equalToConstant: 52),
            letsGoButton.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 299),
            letsGoButton.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 69)

        ])
    }

    func vectorImageConstraints(){

    }

    func btnHumburgerConstraints(){
        NSLayoutConstraint.activate([
            btnHamburger.widthAnchor.constraint(equalToConstant: 40),
            btnHamburger.heightAnchor.constraint(equalToConstant: 40),
            btnHamburger.leadingAnchor.constraint(equalTo: mapScreen.leadingAnchor, constant: 16),
            btnHamburger.topAnchor.constraint(equalTo: mapScreen.topAnchor, constant: 48)
        ])
    }




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

//    @objc
//    func handlreMenuToggle(){
//        delegete?.handleMenuToggle(forMenuOption: nil)
//    }
}

extension MainViewController: CLLocationManagerDelegate {
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
