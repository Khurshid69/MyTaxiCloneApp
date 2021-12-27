//
//  TripDetailsViewController+Layout.swift
//  MyTaxiClone
//
//  Created by user on 27/12/21.
//

import UIKit

extension TripDetailsViewController {
    override func embedSubviews() {
        view.addSubview(tableView)
    }
    
    override func setSubviewsConstraints() {
        setTableViewConstraints()
    }
}

// MARK: - Setup Constraints
extension TripDetailsViewController {
    private func setTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

