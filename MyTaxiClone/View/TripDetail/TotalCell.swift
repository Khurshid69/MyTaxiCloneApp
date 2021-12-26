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
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        embedSubviews()
        setUpConstraints()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        self.addSubview(totalHeader)
        self.addSubview(totalSum)
    }
    
    // MARK: -  Setup constraints.
    
    func setUpConstraints(){
        headerConstraints()
        sumConstraints()
    }
    
    
    func headerConstraints(){
        totalHeader.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(self).offset(12)
            make.bottom.equalTo(self).offset(28)
        }
    }
    
    func sumConstraints(){
        totalSum.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.right.equalTo(16)
            make.bottom.equalTo(self).offset(28)
        }
    }
}
