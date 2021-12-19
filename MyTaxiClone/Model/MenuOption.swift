//
//  MenuOption.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import Foundation
import UIKit

enum MenuOption: Int{
    case TripHistory
    case TripDetail
    case Settings
    
    var description: String{
        switch self {
        case .TripHistory:
            return "Мои поездки"
        case .TripDetail:
            return "Способы оплаты "
        case .Settings:
            return "Избранные адреса"
        }
    }
    
    var image: UIImage{
        switch self {
        case .TripHistory:
            return UIImage(named: "Direction#2-1") ?? UIImage()
        case .TripDetail:
            return UIImage(named: "Wallet#2-1") ?? UIImage()
        case .Settings:
            return UIImage(named: "Half-start-1") ?? UIImage()
        }
    }
}
