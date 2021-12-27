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
        header.font = UIFont.boldSystemFont(ofSize: 20)
        header.translatesAutoresizingMaskIntoConstraints = false
        
        return header
    }()
    
    let rateLabel: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 40, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.textAlignment = .justified
        string.text = "Тариф"
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let paymentMethod: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 46, height: 17)
        string.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.textAlignment = .justified
        string.text = "Способ оплаты"
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let paymentImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Money")
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
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
            make.top.equalTo(header.snp_bottomMargin).offset(22)
            
        }
    }
    
    func rateTypeConstraints(){
        rateType.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(header.snp_bottomMargin).offset(19)
        }
    }
    
    func paymentMethodsConstraints(){
        paymentMethod.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(rateLabel.snp_bottomMargin).offset(15)
        }
    }
    
    func paymentImageConstaints(){
        paymentImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 24, height: 24))
            make.top.equalTo(rateType.snp_bottomMargin).offset(13.5)
            make.right.equalTo(paymentMethodType.snp_leftMargin).offset(-13)
        }
    }
    
    func paymentTypeConstraints(){
        paymentMethodType.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(rateType.snp_bottomMargin).offset(16)
        }
    }
    
    
    func orderLabelConstrainsts(){
        orderLabel.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(paymentMethod.snp_bottomMargin).offset(16)
        }
    }
    
    func orderCountConstaints(){
        orderCount.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-13)
            make.top.equalTo(paymentMethodType.snp_bottomMargin).offset(16)
        }
    }
    
    func dataLabelConstraints(){
        data.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(orderLabel.snp_bottomMargin).offset(16)
        }
    }
    
    func dataTimeConstraints(){
        dataTime.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-13)
            make.top.equalTo(orderCount.snp_bottomMargin).offset(16)
        }
    }
    
    func tripTimeConstraints(){
        tripTime.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(data.snp_bottomMargin).offset(16)
        }
    }
    
    func tripHoursConstraints(){
        tripHours.snp.makeConstraints { make in
            make.right.equalTo(self).offset(-13)
            make.top.equalTo(dataTime.snp_bottomMargin).offset(16)
        }
    }
}
