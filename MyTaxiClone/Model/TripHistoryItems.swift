//
//  TripHistoryItems.swift
//  MyTaxiClone
//
//  Created by user on 17/12/21.
//

import Foundation
import UIKit

enum TripHistoryItems: Int{
    case first
    
    var description: String {
        switch self {
        case .first:
            return "Мои поездки"
        }
    }
    
}

class Post{
    var carImage: UIImage?
    
    init(carImage: UIImage){
        self.carImage = carImage
    }
}
