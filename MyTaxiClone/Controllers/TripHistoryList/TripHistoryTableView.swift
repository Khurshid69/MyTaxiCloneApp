//
//  TripHistoryTableView.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit

class TripHistoryTableView: UITableViewController {
    
    var itemPost: Array<Post> = Array()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        addNc()
        
    }
    
    
    // MARK: - Navigatoin Bar
    
    func addNc(){
        addStaticDatas()
        let more = UIImage(systemName: "slider.horizontal.3")
        more?.withTintColor(.black)
        navigationItem.leftBarButtonItems = [UIBarButtonItem(image: more, style: .plain, target: self, action: #selector(leftTapped))]
        
        title = "6 Июля, Вторник"
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    // MARK: - Add Static Datas
    func addStaticDatas(){
        itemPost.append(Post(carImage: "Bitmap1"))
        itemPost.append(Post(carImage: "Bitmap2"))
        itemPost.append(Post(carImage: "Bitmap3"))
    }
    
    /// Actions
    
    @objc func leftTapped(){}
    
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return itemPost.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = itemPost[indexPath.row]
        let cell = Bundle.main.loadNibNamed("TripHistoryCell", owner: self, options: nil)?.first as! TripHistoryCell
        cell.carImage.image = UIImage(named: items.carImage!)
        return cell
    }
}
