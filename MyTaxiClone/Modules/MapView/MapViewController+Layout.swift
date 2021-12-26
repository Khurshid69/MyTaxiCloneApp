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
        mapView.addSubview(bottomView)
        
        
    }
    
    override func setSubviewsConstraints() {
        setSideMenuButtonConstraints()
        setMarkerConstraints()
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
}
