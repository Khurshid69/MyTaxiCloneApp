//
//  TripHistoryItems.swift
//  MyTaxiClone
//
//  Created by user on 17/12/21.
//

import Foundation
import UIKit

//class Post{
//    var carImage: UIImage?
//
//    init(carImage: UIImage){
//        self.carImage = carImage
//    }
//}


enum TripHistoryItems: Int{
    case Gentra
    case Nexia
    case Malibu
    
    var time: String{
        switch self {
        case .Gentra:
            return "21:36 - 22:12"
        case .Nexia:
            return "14:40 - 15:00"
        case .Malibu:
            return "12:00 - 12:19"
        }
    }
    
    var CarImage: UIImage{
        switch self {
        case .Gentra:
            return UIImage(named: "Bitmap") ?? UIImage()
        case .Nexia:
            return UIImage(named: "Bitmap-1") ?? UIImage()
        case .Malibu:
            return UIImage(named: "Bitmap-2") ?? UIImage()
        }
    }
}
