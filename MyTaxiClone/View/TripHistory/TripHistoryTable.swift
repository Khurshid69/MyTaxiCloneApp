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
        
        
        return tableView
    }()
    
    var datas: Array<Post> = Array()
    private let reuseIdentifer = "TripHistoryCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(tableView)
        
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
