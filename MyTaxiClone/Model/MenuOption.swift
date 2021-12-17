//
//  MenuOption.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import Foundation
import UIKit

enum MenuOption: Int{
    case Profile
    case TripHistory
    case TripDetail
    case Settings
    
    var description: String{
        switch self {
        case .Profile:
            return "Islombek Normukhammadov"
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
        case .Profile:
            return UIImage(named: "account 1") ?? UIImage()
        case .TripHistory:
            return UIImage(named: "Direction#2") ?? UIImage()
        case .TripDetail:
            return UIImage(named: "Wallet#2") ?? UIImage()
        case .Settings:
            return UIImage(named: "Half-start") ?? UIImage()
        }
    }
}
