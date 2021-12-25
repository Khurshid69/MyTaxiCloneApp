import UIKit
////
////  TripDetailVC.swift
////  MyTaxiClone
////
////  Created by user on 20/12/21.
//
//
//import UIKit
////
enum TripDetailSections: Int, CaseIterable {
    case carStatus = 0
    case tripHistory
    case driver
    case paymentMethod
    case costCalculation
    case totalCost
}

class TripDetailVC: UIViewController {
    // MARK: - Properties
    

    weak var delegete: TripDetailVC?
    private let reuseIdentifer = "CarStatusCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}
