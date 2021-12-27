//
//  TripDetailsViewController.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripDetailsViewController: BaseViewController {
    private let sections: [TripDetailSection] = TripDetailSection.allCases

    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.dataSource = self
        view.delegate = self
        view.separatorStyle = .none
        view.register(CarStatusCell.self)
        view.register(TripHistoryStreetCell.self)
        view.register(DriverCell.self)
        view.register(PeymentMethodCell.self)
        view.register(CostCalculationCell.self)
        view.register(TotalCell.self)
        view.showsVerticalScrollIndicator = false
        view.translatesAutoresizingMaskIntoConstraints = false

        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
}

extension TripDetailsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.row] {
        case .carStatus:
            let cell = tableView.reusableCell(CarStatusCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 79).isActive = true
            return cell

        case .tripHistory:
            let cell = tableView.reusableCell(TripHistoryStreetCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 165).isActive = true
            return cell

        case .driver:
            let cell = tableView.reusableCell(DriverCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
            return cell
            
        case .paymentMethod:
            let cell = tableView.reusableCell(PeymentMethodCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 186).isActive = true
            return cell

        case .costCalculation:
            let cell = tableView.reusableCell(CostCalculationCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 170).isActive = true
            return cell

        case .totalCost:
            let cell = tableView.reusableCell(TotalCell.self, for: indexPath)
            cell.heightAnchor.constraint(equalToConstant: 130).isActive = true
            return cell
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
