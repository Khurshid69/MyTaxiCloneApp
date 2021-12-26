//
//  TripHistoryViewController+Layout.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

extension TripHistoryViewController {
    struct DrawingConstants {
        let hPadding: CGFloat = 16
        let vPadding: CGFloat = 16
    }
}

extension TripHistoryViewController {
    override func embedSubviews() {
        view.addSubview(tableView)
    }
    
    override func setSubviewsConstraints() {
        setTableViewConstraints()
    }
}


// MARK: - Setup Constraints
extension TripHistoryViewController {
    private func setTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
