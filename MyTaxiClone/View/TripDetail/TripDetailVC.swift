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
    case costCalculation
    case totalCost
}
//
//class TripDetailVC: UIViewController {
//    // MARK: - Properties
//    lazy var tableView: UITableView = {
//        let tableView = UITableView()
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(TripVcCell.self, forCellReuseIdentifier: reuseIdentifer)
//        tableView.backgroundColor = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
//
//        return tableView
//    }()
//    
//    weak var delegete: MenuController?
//    private let reuseIdentifer = "TripVcCell"
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
//        tableView.translatesAutoresizingMaskIntoConstraints = false
//        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
//        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//    }
//
//
//
//
//}
//
//extension TripDetailVC: UITableViewDelegate, UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        <#code#>
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//
//}
