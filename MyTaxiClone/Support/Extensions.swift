//
//  Extensions.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import Foundation
import UIKit

public extension UITableViewCell {
    static var uid: String {
        return String(describing: self)
    }
}

public extension UITableView {
    /// Register UITableViewCell using class name.
    ///
    /// - Parameters:
    ///   - nib: Nib file used to create the collectionView cell.
    ///   - name: UITableViewCell type.
    func register<T: UITableViewCell>(nib: UINib?, forCellWithClass name: T.Type) {
        register(nib, forCellReuseIdentifier: name.uid)
    }
    
    /// Register UITableViewCell using class name.
    ///
    /// - Parameter cellClass: UITableViewCell type.
    func register(_ cellClass: UITableViewCell.Type) {
        register(cellClass, forCellReuseIdentifier: cellClass.uid)
    }
    
    func reusableCell<T: UITableViewCell>(_ classType: T.Type, for indexPath: IndexPath) -> T {
        dequeueReusableCell(withIdentifier: T.uid, for: indexPath) as! T
    }
}
