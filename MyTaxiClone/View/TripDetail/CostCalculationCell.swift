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
       
        return sum
    }()
    
    let tipAmount: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 101, height: 17)
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Сумма поездки"

        return string
    }()
    
    let tripSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 74, height: 17)
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Bold", size: 14)
        sum.textAlignment = .justified
        sum.text = "31,645 UZS"
        
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
        
        return sum
    }()
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 170).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 906).isActive = true
//
    }
    
    func minimumAmountConsraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 136).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = tru
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 951).isActive = true

    }
    
    func minimumSum(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 74).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 285).isActive = tru
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 951).isActive = true

    }
    
    func tripAmountConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 101).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 980).isActive = true

    }
    
    func tripSumConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 74).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 285).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 980).isActive = true

    }
    
    func pricePendingConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 104).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 1009).isActive = true
        
    }
    
    func pricePendingSumConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 39).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 320).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 1009).isActive = true
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
