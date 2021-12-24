//import UIKit
//////
//////  TripDetailVC.swift
//////  MyTaxiClone
//////
//////  Created by user on 20/12/21.
////
////
////import UIKit
//////
//enum TripDetailSections: Int, CaseIterable {
//    case carStatus = 0
//    case tripHistory
//    case driver
//    case paymentMethod
//    case costCalculation
//    case totalCost
//}
//
//class TripDetailVC: UIViewController {
//    // MARK: - Properties
//    lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(CarStatusCell.self, forCellReuseIdentifier: reuseIdentifer)
//        tableView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//
//        return tableView
//    }()
//
//    weak var delegete: TripDetailVC?
//    private let reuseIdentifer = "CarStatusCell"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//
//    }
//
//    // MARK: - Handlers
//    func configureTableView(){
//        view.addSubview(tableView)
//
//        NSLayoutConstraint.activate([
//            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
//            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
//            tableView.topAnchor.constraint(equalTo: view.topAnchor)
//        ])
//    }
//
//
//
//
//}
//
//extension TripDetailVC: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }
//
//
//}
