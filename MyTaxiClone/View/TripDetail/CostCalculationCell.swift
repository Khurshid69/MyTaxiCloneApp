//
//  CostCalculationCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class CostCalculationCell: UITableViewCell {
    
    // MARK: - Properties
    
    let headerCalculation: UILabel = {
        let header = UILabel()
        header.frame = CGRect(x: 0, y: 0, width: 170, height: 24)
        header.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        header.textAlignment = .justified
        header.text = "Расчёт стоимости"
        header.font = UIFont.boldSystemFont(ofSize: 20)
        header.translatesAutoresizingMaskIntoConstraints = false
        
        return header
    }()
    
    let minimumAmount: UILabel = {
        let min = UILabel()
        min.frame = CGRect(x: 0, y: 0, width: 136, height: 17)
        min.backgroundColor = .white
        min.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        min.font = UIFont(name: "Lato-SemiBold", size: 14)
        min.textAlignment = .justified
        min.text = "Минимальная сумма"
        min.font = UIFont.boldSystemFont(ofSize: 14)
        min.translatesAutoresizingMaskIntoConstraints = false
        
        return min
    }()
    
    let minSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 74, height: 17)
        sum.backgroundColor = .white
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Bold", size: 14)
        sum.textAlignment = .justified
        sum.text = "10,000 UZS"
        sum.font = UIFont.boldSystemFont(ofSize: 14)
        sum.translatesAutoresizingMaskIntoConstraints = false
        
        return sum
    }()
    
    let tipAmount: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 101, height: 17)
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Сумма поездки"
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let tripSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 74, height: 17)
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Bold", size: 14)
        sum.textAlignment = .justified
        sum.text = "31,645 UZS"
        sum.font = UIFont.boldSystemFont(ofSize: 14)
        sum.translatesAutoresizingMaskIntoConstraints = false
        
        return sum
    }()
    
    let pricePending: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 104, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Цена ожидании"
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let pricePendingSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 39, height: 17)
        sum.backgroundColor = .white
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Bold", size: 14)
        sum.textAlignment = .justified
        sum.text = "0 UZS"
        sum.font = UIFont.boldSystemFont(ofSize: 14)
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
        setConstraints()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        self.addSubview(headerCalculation)
        self.addSubview(minimumAmount)
        self.addSubview(minSum)
        self.addSubview(tipAmount)
        self.addSubview(tripSum)
        self.addSubview(pricePending)
        self.addSubview(pricePendingSum) 
    }
    
    func setConstraints(){
        headerConstraints()
        minimumAmountConsraints()
        minimumSum()
        tripAmountConstraints()
        tripSumConstraints()
        pricePendingConstraints()
        pricePendingSumConstraints()
    }
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
        headerCalculation.snp.makeConstraints { make in
            make.top.equalTo(self).offset(22)
            make.left.equalTo(self).offset(16)
            
        }
    }
    
    func minimumAmountConsraints(){
        minimumAmount.snp.makeConstraints { make in
            make.top.equalTo(headerCalculation.snp_bottomMargin).offset(22)
            make.left.equalTo(self).offset(16)
            
        }
    }
    
    func minimumSum(){
        minSum.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(headerCalculation.snp_bottomMargin).offset(22)
            
        }
    }
    
    func tripAmountConstraints(){
        tipAmount.snp.makeConstraints { make in
            make.left.equalTo(16)
            make.top.equalTo(minimumAmount.snp_bottomMargin).offset(16)
            
        }
    }
    
    func tripSumConstraints(){
        tripSum.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(minSum.snp_bottomMargin).offset(16)
        }
    }
    
    func pricePendingConstraints(){
        pricePending.snp.makeConstraints { make in
            make.left.equalTo(16)
            make.top.equalTo(tipAmount.snp_bottomMargin).offset(16)
            
        }
    }
    
    func pricePendingSumConstraints(){
        pricePendingSum.snp.makeConstraints { make in
            make.right.equalTo(-16)
            make.top.equalTo(tripSum.snp_bottomMargin).offset(16)
            
        }
    }
}
