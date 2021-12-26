//
//  MenuViewController+Layout.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

extension MenuViewController {
    override func embedSubviews() {
        view.addSubview(tableView)
    }
    
    override func setSubviewsConstraints() {
        setTableViewConstraints()
    }
}

extension MenuViewController {
    private func setTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}
