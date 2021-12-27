//
//  MapViewController+Layout.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

extension MapViewController {
    struct DrawingConstants {
        let sideMenuButtonSize = CGSize(width: 40, height: 40)
        let sideMenuButtonTop: CGFloat = 4
        let sideMenuButtonLeft: CGFloat = 10
        let myLocationButotnSize = CGSize(width: 44, height: 44)
        let myLocationButtonBottom: CGFloat = -167
        let myLocationButtonRight: CGFloat = -13
        let markerSize = CGSize(width: 40, height: 58)
    }
}

extension MapViewController {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        sideMenuButton.layoutIfNeeded()
        sideMenuButton.layer.cornerRadius = sideMenuButton.frame.width / 2
        
        myLocationButton.layoutIfNeeded()
        myLocationButton.layer.cornerRadius = myLocationButton.frame.width / 2
    }
    
    override func embedSubviews() {
        view.addSubview(mapView)
        view.addSubview(sideMenuButton)
        view.addSubview(marker)
        view.addSubview(bottomView)
        bottomView.addSubview(addressLabel)
        view.addSubview(myLocationButton)
    }
    
    override func setSubviewsConstraints() {
        setSideMenuButtonConstraints()
        setMarkerConstraints()
        setBottomConstraints()
        setAdressLabelConstraints()
        setMyLocationButtonConstraints()
    }
}


// MARK: - Setup Constraints
extension MapViewController {
    private func setSideMenuButtonConstraints() {
        NSLayoutConstraint.activate([
            sideMenuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,
                                                constant: dwgConst.sideMenuButtonTop),
            sideMenuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor,
                                                    constant: dwgConst.sideMenuButtonLeft),
            sideMenuButton.widthAnchor.constraint(equalToConstant: dwgConst.sideMenuButtonSize.width),
            sideMenuButton.heightAnchor.constraint(equalToConstant: dwgConst.sideMenuButtonSize.height)
        ])
    }
    
    private func setMarkerConstraints() {
        NSLayoutConstraint.activate([
            marker.widthAnchor.constraint(equalToConstant: dwgConst.markerSize.width),
            marker.heightAnchor.constraint(equalToConstant: dwgConst.markerSize.height),
            marker.centerXAnchor.constraint(equalTo: mapView.centerXAnchor),
            marker.centerYAnchor.constraint(equalTo: mapView.centerYAnchor, constant: -dwgConst.markerSize.height / 2),
        ])
    }
    
    private func setBottomConstraints(){
        NSLayoutConstraint.activate([
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomView.heightAnchor.constraint(equalToConstant: 137),
        ])
    }
    
    private func setAdressLabelConstraints(){
        addressLabel.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 270, height: 14))
            make.left.equalTo(bottomView).offset(60)
            make.bottom.equalTo(bottomView.snp_topMargin).offset(40)
        }
    }
    
    private func setMyLocationButtonConstraints(){
        NSLayoutConstraint.activate([
            myLocationButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: dwgConst.myLocationButtonRight),
            myLocationButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: dwgConst.myLocationButtonBottom),
            myLocationButton.widthAnchor.constraint(equalToConstant: dwgConst.myLocationButotnSize.width),
            myLocationButton.heightAnchor.constraint(equalToConstant: dwgConst.myLocationButotnSize.height),
        ])
    }
}
