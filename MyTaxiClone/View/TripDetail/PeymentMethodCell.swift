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
        embedSubviews()
        setUpConstraints()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        self.addSubview(header)
        self.addSubview(rateLabel)
        self.addSubview(rateType)
        self.addSubview(paymentMethod)
        self.addSubview(paymentImage)
        self.addSubview(paymentMethodType)
        self.addSubview(orderLabel)
        self.addSubview(orderCount)
        self.addSubview(data)
        self.addSubview(dataTime)
        self.addSubview(tripTime)
        self.addSubview(tripHours)
        
    }
    
    func setUpConstraints(){
        headerConstraints()
        rateLabelConstraints()
        rateTypeConstraints()
        paymentMethodsConstraints()
        paymentImageConstaints()
        paymentTypeConstraints()
        orderLabelConstrainsts()
        orderCountConstaints()
        dataLabelConstraints()
        dataTimeConstraints()
        tripTimeConstraints()
        tripHoursConstraints()
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
        header.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(self).offset(26)
        }
        
    }
    
    func rateLabelConstraints(){
        rateLabel.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            
        }
    }
    
    func rateTypeConstraints(){
        rateType.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            
        }
    }
    
    func paymentMethodsConstraints(){
        paymentMethod.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            make.top.equalTo(rateLabel).offset(15)
        }
    }
    
    func paymentImageConstaints(){
        paymentImage.snp.makeConstraints { make in
            make.left.equalTo(self).offset(8)
        }
    }
    
    func paymentTypeConstraints(){
        paymentMethodType.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            make.top.equalTo(rateType).offset(15)
        }
    }
    
    
    func orderLabelConstrainsts(){
        orderLabel.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            make.top.equalTo(paymentMethod).offset(16)
        }
    }
    
    func orderCountConstaints(){
        orderCount.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(paymentMethodType).offset(12)
        }
    }
    
    func dataLabelConstraints(){
        data.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(orderLabel).offset(12)
        }
    }
    
    func dataTimeConstraints(){
        dataTime.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            make.top.equalTo(orderCount).offset(12)
        }
    }
    
    func tripTimeConstraints(){
        tripTime.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(data).offset(16)
        }
    }
    
    func tripHoursConstraints(){
        tripHours.snp.makeConstraints { make in
            make.right.equalTo(self).offset(16)
            make.top.equalTo(dataTime).offset(13)
            // make.bottom.equalTo(self).offset(40)
        }
    }
}
