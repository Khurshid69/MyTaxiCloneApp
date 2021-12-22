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
        string.translatesAutoresizingMaskIntoConstraints = false
        
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
        sum.translatesAutoresizingMaskIntoConstraints = false
        
        return sum
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        embedSubviews()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
        NSLayoutConstraint.activate([
            totalHeader.widthAnchor.constraint(equalToConstant: 57),
            totalHeader.heightAnchor.constraint(equalToConstant: 24),
            totalHeader.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            totalHeader.topAnchor.constraint(equalTo: topAnchor, constant: 1055)
        ])
    }
    
    func sumConstraints(){
        NSLayoutConstraint.activate([
            totalSum.widthAnchor.constraint(equalToConstant: 104),
            totalSum.heightAnchor.constraint(equalToConstant: 24),
            totalSum.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 255),
            totalSum.topAnchor.constraint(equalTo: topAnchor, constant: 1055)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
