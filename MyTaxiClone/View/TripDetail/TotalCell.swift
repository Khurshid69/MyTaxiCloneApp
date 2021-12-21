//
//  TotalCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TotalCell: UITableViewCell {
    
    // MARK: - Properties
    
    let totalHeader: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 57, height: 24)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Black", size: 20)
        string.textAlignment = .justified
        string.text = "Итого"
        
        return string
    }()
    
    let totalSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 104, height: 24)
        sum.backgroundColor = .white
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Black", size: 20)
        sum.textAlignment = .justified
        sum.text = "39,600 UZS"
        
        return sum
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 57).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 1055).isActive = true

    }
    
    func sumConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 104).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 255).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 1055).isActive = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
