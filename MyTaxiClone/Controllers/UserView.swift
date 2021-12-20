//
//  UserView.swift
//  MyTaxiClone
//
//  Created by user on 19/12/21.
//

import Foundation
import UIKit
import SnapKit

class UserView: UIView{
    
    var userView = UserView()
    
    var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.14, alpha: 1.0)
        contentView.layer.cornerRadius = 12
        
        return contentView
    }()
    
    var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "account 1")
        
        return imageView
    }()
    
    var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Islombek"
        nameLabel.font = UIFont.systemFont(ofSize: 18)
        nameLabel.textColor = .white
        
        return nameLabel
    }()
    
    var surnameLabel: UILabel = {
        let surnameLabel = UILabel()
        surnameLabel.text = "Normuhammadov"
        surnameLabel.font = UIFont.systemFont(ofSize: 18)
        surnameLabel.textColor = .white
        
        return surnameLabel
    }()
    
    var phoneNumberLabel: UILabel = {
        let phoneNumberLabel = UILabel()
        phoneNumberLabel.text = "+998(97) 000-00-00"
        phoneNumberLabel.textColor = UIColor(red: 0.49, green:  0.49, blue:  0.49, alpha: 1.0)
        phoneNumberLabel.font = UIFont.systemFont(ofSize: 14)
        phoneNumberLabel.textColor = .white
        
        return phoneNumberLabel
    }()
    
    var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        
        return stackView
    }()
    
    
    
    // Embed subviews.
    func embedSubViews(){
        addSubview(contentView)
        contentView.addSubview(stackView)
        contentView.addSubview(imageView)
        stackView.addSubview(nameLabel)
        stackView.addSubview(surnameLabel)
        stackView.addSubview(phoneNumberLabel)
        
    }
    
    // Setup constraints.
    func setImageConstraints(){
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.left.equalTo(contentView.snp.left).offset(12)
            make.centerY.equalTo(contentView.snp.centerY)
        }
    }
    
    func setStackViewConstraints(){
        stackView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(12)
            make.right.bottom.equalTo(contentView).offset(-12)
            make.left.equalTo(imageView.snp.right).offset(12)
        }
    }
    
    func setContentViewConstraints(){
        contentView.snp.makeConstraints { make in
            make.left.equalTo(userView).offset(16)
            make.right.equalTo(userView).offset(-72)
            make.top.bottom.equalTo(userView)
        }
    }
}
