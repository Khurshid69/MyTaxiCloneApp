//
//  PeymentMethodCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class PeymentMethodCell: UITableViewCell {
    
    // MARK: - Properties
    
    let header: UILabel = {
        let header = UILabel()
        header.frame = CGRect(x: 0, y: 0, width: 145, height: 24)
        header.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        header.font = UIFont(name: "Lato-Black", size: 20)
        header.textAlignment = .justified
        header.text = "Общие данные"
        
        return header
    }()
    
    let rateLabel: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 40, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Тариф"

        return string
    }()
    
    let rateType: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 46, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Бизнес"

        return string
    }()
    
    let paymentMethod: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 46, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Бизнес"

        return string
    }()
    
    let paymentImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 21.55, height: 12.31)
        image.image = UIImage(named: "")
        
        return image
    }()
    
    let paymentMethodType: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 79, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Наличными"

        return string
    }()
    
    let orderLabel: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 56, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Заказ №"

        return string
    }()
    
    let orderCount: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 57, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "3917866"

        return string
    }()
    
    let data: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 144, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Дата и время поездки"

        return string
    }()
    
    let dataTime: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 106, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "29 Август, 19:20"

        return string
    }()
    
    let tripTime: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 194, height: 17)
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Продолжительность поездки"

        return string
    }()
    
    let tripHours: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 37, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "00:45"

        return string
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        embedSubviews()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 145).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 696).isActive = true

    }
    
    func rateLabelConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 40).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 741).isActive = true


    }
    
    func rateTypeConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 46).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 313).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 741).isActive = true


    }
    
    func paymentMethodsConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 101).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 773).isActive = true
    }
    
    func paymentImageConstaints(){
//        view.translatesAutoresizingMaskIntoConstraints = false

    }
    
    func paymentTypeConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 79).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 280).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 773).isActive = true


    }
    
    func orderLabelConstrainsts(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 56).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 806).isActive = true


    }
    
    func orderCountConstaints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 56).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 806).isActive = true


    }
    
    func dataLabelConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 57).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 302).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 806).isActive = true
    }
    
    func dataTimeConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 144).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 835).isActive = true


    }
    
    func tripTimeConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 194).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 864).isActive = true


    }
    
    func tripHoursConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 37).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 322).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 865).isActive = true


    }
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
