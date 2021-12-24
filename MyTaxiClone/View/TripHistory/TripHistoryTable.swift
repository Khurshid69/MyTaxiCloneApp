//
//  TripHistoryTable.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryTable: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TripHistoryCell.self, forCellReuseIdentifier: reuseIdentifer)
        tableView.separatorColor = .white
        tableView.rowHeight = 118
        
        
        return tableView
    }()
    
    var datas: Array<Post> = Array()
    private let reuseIdentifer = "TripHistoryCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureTableView()
        
        
        let backButton = UIBarButtonItem()
        backButton.title = "Мои поездки"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -16).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: -16).isActive = true

    }
    
    
}

extension TripHistoryTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath)as! TripHistoryCell
        
        cell.layer.borderColor = UIColor.systemGray5.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 12
        
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 60))
        view.backgroundColor = .white
        
        let date = UILabel(frame: CGRect(x: 0, y: 20, width: 192, height: 29))
        date.translatesAutoresizingMaskIntoConstraints = false
        date.text = "6 Июля, Вторник"
        date.font = UIFont(name: "Avenir Nexr", size: 24)
        date.font = UIFont.boldSystemFont(ofSize: 24)
        view.addSubview(date)
        
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
            return 45
        }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 3
        }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let tripHistoryTable = TripDetailVC(rawValue: indexPath.row)
//
//
//    }
    
}

//func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//    let menuOption = MenuOption(rawValue: indexPath.row)
//    delegete?.handleMenuToggle(forMenuOption: menuOption)
//}
