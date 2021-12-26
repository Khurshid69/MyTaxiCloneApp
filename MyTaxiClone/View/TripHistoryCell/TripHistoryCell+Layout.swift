//
//  TripHistoryCell+Layout.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

extension TripHistoryCell {
    override func embedSubviews(){
        contentView.addSubview(containerView)
        containerView.addSubview(departureIcon)
        containerView.addSubview(departurePlace)
        containerView.addSubview(arrivalIcon)
        containerView.addSubview(arrivalPlace)
        containerView.addSubview(bottomFrame)
        containerView.addSubview(carImageView)
        bottomFrame.addSubview(timeLabel)
        bottomFrame.addSubview(carImageView)
    }
    
    override func setSubviewsConstraints(){
        setContainerViewConstraints()
        setDepartureIconConstraints()
        setDeparturePlaceConstraints()
        setArrvalIconConstraints()
        setArrivalPlaceConstraints()
        setBottomFrameConstraints()
        setTimeLabelConstraints()
        setCarImageConstraints()
    }
}

// MARK: - Setup Constraints
extension TripHistoryCell {
    func setContainerViewConstraints(){
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8)
        ])
    }
    
    func setDepartureIconConstraints(){
        NSLayoutConstraint.activate([
            departureIcon.widthAnchor.constraint(equalToConstant: 24),
            departureIcon.heightAnchor.constraint(equalToConstant: 24),
            departureIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            departureIcon.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 12)
        ])
    }
    
    func setArrvalIconConstraints(){
        NSLayoutConstraint.activate([
            arrivalIcon.widthAnchor.constraint(equalToConstant: 24),
            arrivalIcon.heightAnchor.constraint(equalToConstant: 24),
            arrivalIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 12),
            arrivalIcon.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 40)
        ])
    }
    
    func setDeparturePlaceConstraints(){
        NSLayoutConstraint.activate([
            departurePlace.leadingAnchor.constraint(equalTo: departureIcon.trailingAnchor, constant: 8),
            departurePlace.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 12),
            departurePlace.centerYAnchor.constraint(equalTo: departureIcon.centerYAnchor)
        ])
    }
    
    func setArrivalPlaceConstraints(){
        NSLayoutConstraint.activate([
            arrivalPlace.leadingAnchor.constraint(equalTo: arrivalIcon.trailingAnchor, constant: 8),
            arrivalPlace.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 12),
            arrivalPlace.centerYAnchor.constraint(equalTo: arrivalIcon.centerYAnchor)
        ])
    }
    
    func setBottomFrameConstraints(){
        NSLayoutConstraint.activate([
            bottomFrame.heightAnchor.constraint(equalToConstant: 42),
            bottomFrame.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            bottomFrame.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            bottomFrame.bottomAnchor.constraint(equalTo: containerView.bottomAnchor)
        ])
    }
    
    func setTimeLabelConstraints(){
        NSLayoutConstraint.activate([
            timeLabel.leadingAnchor.constraint(equalTo: bottomFrame.leadingAnchor, constant: 20),
            timeLabel.centerYAnchor.constraint(equalTo: bottomFrame.centerYAnchor)
        ])
    }
    
    func setCarImageConstraints(){
        NSLayoutConstraint.activate([
            carImageView.widthAnchor.constraint(equalToConstant: 108),
            carImageView.heightAnchor.constraint(equalToConstant: 39),
            carImageView.trailingAnchor.constraint(equalTo: bottomFrame.trailingAnchor, constant: -10),
            carImageView.bottomAnchor.constraint(equalTo: bottomFrame.bottomAnchor, constant: -12)
        ])
    }
}

