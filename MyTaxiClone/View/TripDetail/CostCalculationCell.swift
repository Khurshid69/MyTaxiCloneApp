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
        header.font = UIFont(name: "Lato-Black", size: 20)
        header.textAlignment = .justified
        header.text = "Расчёт стоимости"
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
        
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
        NSLayoutConstraint.activate([
            headerCalculation.widthAnchor.constraint(equalToConstant: 170),
            headerCalculation.heightAnchor.constraint(equalToConstant: 24),
            headerCalculation.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerCalculation.topAnchor.constraint(equalTo: topAnchor, constant: 906)
        ])
    }
    
    func minimumAmountConsraints(){
        NSLayoutConstraint.activate([
            minimumAmount.widthAnchor.constraint(equalToConstant: 136),
            minimumAmount.heightAnchor.constraint(equalToConstant: 17),
            minimumAmount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            minimumAmount.topAnchor.constraint(equalTo: topAnchor, constant: 951)
        ])
    }
    
    func minimumSum(){
        NSLayoutConstraint.activate([
            minSum.widthAnchor.constraint(equalToConstant: 74),
            minSum.heightAnchor.constraint(equalToConstant: 17),
            minSum.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 285),
            minSum.topAnchor.constraint(equalTo: topAnchor, constant: 951)
        ])
    }
    
    func tripAmountConstraints(){
        NSLayoutConstraint.activate([
            tripSum.widthAnchor.constraint(equalToConstant: 101),
            tripSum.heightAnchor.constraint(equalToConstant: 17),
            tripSum.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            tripSum.topAnchor.constraint(equalTo: topAnchor, constant: 980)
        ])
    }
    
    func tripSumConstraints(){
        NSLayoutConstraint.activate([
            tripSum.widthAnchor.constraint(equalToConstant: 74),
            tripSum.heightAnchor.constraint(equalToConstant: 17),
            tripSum.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 285),
            tripSum.topAnchor.constraint(equalTo: topAnchor, constant: 980)
        ])
    }
    
    func pricePendingConstraints(){
        NSLayoutConstraint.activate([
            pricePending.widthAnchor.constraint(equalToConstant: 104),
            pricePending.heightAnchor.constraint(equalToConstant: 17),
            pricePending.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pricePending.topAnchor.constraint(equalTo: topAnchor, constant: 1009)
        ])
    }
    
    func pricePendingSumConstraints(){
        NSLayoutConstraint.activate([
            pricePendingSum.widthAnchor.constraint(equalToConstant: 39),
            pricePendingSum.heightAnchor.constraint(equalToConstant: 17),
            pricePendingSum.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 320),
            pricePendingSum.topAnchor.constraint(equalTo: topAnchor, constant: 1009)
        ])
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
    }
    
}
