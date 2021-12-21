//
//  ContainerVC.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class ContainerVC: UIViewController {
    
    private let sections: [TripDetailSections] = [.carStatus, .tripHistory, .driver, .paymentMethod, .costCalculation, .totalCost]
    
    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        view.backgroundColor = .systemGroupedBackground
        view.registerNib(CarStatusCell.self)
        view.registerNib(TripHistoryStreetCell.self)
        view.registerNib(DriverCell.self)
        view.registerNib(PeymentMethodCell.self)
        view.registerNib(CostCalculationCell.self)
        view.registerNib(TotalCell.self)
        view.separatorStyle = .none
        view.showsVerticalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension ContainerVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.row] {
        case .carStatus:
            let cell: CarStatusCell = tableView.dequeueReusableCell(withIdentifier: "CarStatusCell", for: indexPath) as! CarStatusCell
            return cell
            
        case .tripHistory:
            let cell: TripHistoryStreetCell = tableView.dequeueReusableCell(withIdentifier: "TripHistoryStreetCell", for: indexPath) as! TripHistoryStreetCell
            return cell
            
        case .driver:
            let cell: DriverCell = tableView.dequeueReusableCell(withIdentifier: "DriverCell", for: indexPath) as! DriverCell
            return cell
            
        case .costCalculation:
            let cell: CostCalculationCell = tableView.dequeueReusableCell(withIdentifier: "CostCalculationCell", for: indexPath) as! CostCalculationCell
            return cell
            
        case .totalCost:
            let cell: TotalCell = tableView.dequeueReusableCell(withIdentifier: "TotalCell", for: indexPath) as! TotalCell
            return cell
        case .paymentMethod:
            let cell: PeymentMethodCell = tableView.dequeueReusableCell(withIdentifier: "PeymentMethodCell", for: indexPath) as! PeymentMethodCell
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}
