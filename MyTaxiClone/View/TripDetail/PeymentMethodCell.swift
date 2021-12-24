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
        header.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let rateType: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 46, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Бизнес"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let paymentMethod: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 46, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Бизнес"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let paymentImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 21.55, height: 12.31)
        image.image = UIImage(named: "")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let paymentMethodType: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 79, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Наличными"
        string.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let orderCount: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 57, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "3917866"
        string.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let dataTime: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 106, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "29 Август, 19:20"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let tripTime: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 194, height: 17)
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 14)
        string.textAlignment = .justified
        string.text = "Продолжительность поездки"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let tripHours: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 37, height: 17)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "00:45"
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
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
            header.widthAnchor.constraint(equalToConstant: 145),
            header.heightAnchor.constraint(equalToConstant: 24),
            header.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            header.topAnchor.constraint(equalTo: topAnchor, constant: 696)
        ])
        
    }
    
    func rateLabelConstraints(){
        NSLayoutConstraint.activate([
            rateLabel.widthAnchor.constraint(equalToConstant: 40),
            rateLabel.heightAnchor.constraint(equalToConstant: 17),
            rateLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            rateLabel.topAnchor.constraint(equalTo: topAnchor, constant: 741)
        ])
    }
    
    func rateTypeConstraints(){
        NSLayoutConstraint.activate([
            rateType.widthAnchor.constraint(equalToConstant: 46),
            rateType.heightAnchor.constraint(equalToConstant: 17),
            rateType.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 313),
            rateType.topAnchor.constraint(equalTo: topAnchor, constant: 741)
        ])
    }
    
    func paymentMethodsConstraints(){
        NSLayoutConstraint.activate([
            paymentMethod.widthAnchor.constraint(equalToConstant: 101),
            paymentMethod.heightAnchor.constraint(equalToConstant: 17),
            paymentMethod.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            paymentMethod.topAnchor.constraint(equalTo: topAnchor, constant: 773)
        ])
    }
    
    func paymentImageConstaints(){
        
        
    }
    
    func paymentTypeConstraints(){
        NSLayoutConstraint.activate([
            paymentMethodType.widthAnchor.constraint(equalToConstant: 79),
            paymentMethodType.heightAnchor.constraint(equalToConstant: 17),
            paymentMethodType.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 280),
            paymentMethodType.topAnchor.constraint(equalTo: topAnchor, constant: 773)
        ])
    }
    
    
    func orderLabelConstrainsts(){
        NSLayoutConstraint.activate([
            orderLabel.widthAnchor.constraint(equalToConstant: 56),
            orderLabel.heightAnchor.constraint(equalToConstant: 17),
            orderLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            orderLabel.topAnchor.constraint(equalTo: topAnchor, constant: 806)
        ])
    }
    
    func orderCountConstaints(){
        NSLayoutConstraint.activate([
            orderCount.widthAnchor.constraint(equalToConstant: 56),
            orderCount.heightAnchor.constraint(equalToConstant: 17),
            orderCount.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            orderCount.topAnchor.constraint(equalTo: topAnchor, constant: 806)
        ])
    }
    
    func dataLabelConstraints(){
        NSLayoutConstraint.activate([
            data.widthAnchor.constraint(equalToConstant: 57),
            data.heightAnchor.constraint(equalToConstant: 17),
            data.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 302),
            data.topAnchor.constraint(equalTo: topAnchor, constant: 806)
        ])
    }
    
    func dataTimeConstraints(){
        NSLayoutConstraint.activate([
            dataTime.widthAnchor.constraint(equalToConstant: 144),
            dataTime.heightAnchor.constraint(equalToConstant: 17),
            dataTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            dataTime.topAnchor.constraint(equalTo: topAnchor, constant: 835)
        ])
    }
    
    func tripTimeConstraints(){
        NSLayoutConstraint.activate([
            tripTime.widthAnchor.constraint(equalToConstant: 194),
            tripTime.heightAnchor.constraint(equalToConstant: 17),
            tripTime.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            tripTime.topAnchor.constraint(equalTo: topAnchor, constant: 864)
        ])
    }
    
    func tripHoursConstraints(){
        NSLayoutConstraint.activate([
            tripHours.widthAnchor.constraint(equalToConstant: 37),
            tripHours.heightAnchor.constraint(equalToConstant: 17),
            tripHours.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 322),
            tripHours.topAnchor.constraint(equalTo: topAnchor, constant: 865)
        ])
    }
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
