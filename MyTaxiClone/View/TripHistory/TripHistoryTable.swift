//
//  TripHistoryTable.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryTable: UIViewController {
    
    var datas: Array<Post> = Array()

    override func viewDidLoad() {
        super.viewDidLoad()

        
        datas.append(Post(carImage: "Bitmap-1"))
        datas.append(Post(carImage: "Bitmap-2"))
        datas.append(Post(carImage: "Bitmap"))
        
    }
    

}
extension TripHistoryTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let items = datas[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TripHistoryCell", for: indexPath)as! TripHistoryCell
        cell.frameImage.image = UIImage(named: items.carImage!)
        return cell
    }
    
    
}
