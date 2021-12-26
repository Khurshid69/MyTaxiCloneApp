//
//  BaseTableViewCell.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

class BaseTableViewCell: UITableViewCell {}

@objc extension BaseTableViewCell {
    func setupSubviews() {
        embedSubviews()
        setSubviewsConstraints()
    }
    
    func embedSubviews() { }
    
    func setSubviewsConstraints() {}
}
