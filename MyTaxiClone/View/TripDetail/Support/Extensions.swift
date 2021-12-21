//
//  Extensions.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import Foundation

extension UITableView {
    func registerNib<Cell: UITableViewCell>(_ cell: Cell.Type) {
        register(UINib(nibName: String(describing: cell), bundle: nil), forCellReuseIdentifier: cell.identifer)
    }

    func reusableCell<Cell: UITableViewCell>(for indexPath: IndexPath) -> Cell {
        dequeueReusableCell(withIdentifier: Cell.identifer, for: indexPath) as! Cell
    }
}

extension UITableViewCell {
    static var identifer: String {
        String(describing: self)
    }
}
