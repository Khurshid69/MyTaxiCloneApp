//
//  TripHistoryTable.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryTable: UIViewController, UIGestureRecognizerDelegate {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TripHistoryCell.self, forCellReuseIdentifier: reuseIdentifer)
        tableView.separatorColor = .white
        
        
        return tableView
    }()
    
    var datas: Array<Post> = Array()
    private let reuseIdentifer = "TripHistoryCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
        

        
        let backButton = UIBarButtonItem()
        backButton.title = "Мои поездки"
        backButton.tintColor = .black
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = backButton
        
    }
    
}
extension TripHistoryTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = datas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripHistoryCell", for: indexPath)as! TripHistoryCell
        cell.frameImage.image = items.carImage
        cell.backgroundColor = .black
        
        return cell
    }
    
    
}
