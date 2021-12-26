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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        embedSubViews()
        setupSubviewConstriants()
    }
    
    // Embed subviews.
    private func embedSubViews(){
        addSubview(contentView)
        contentView.addSubview(stackView)
        contentView.addSubview(imageView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(surnameLabel)
        stackView.addArrangedSubview(phoneNumberLabel)
    }
    
    private func setupSubviewConstriants() {
        setContentViewConstraints()
        setImageConstraints()
        setStackViewConstraints()
    }
}

extension UserView {
    private func setContentViewConstraints(){
        let width = (UIScreen.main.bounds.width - 12) - (UIScreen.main.bounds.width * 0.15)
        contentView.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.width.equalTo(width)
            make.top.equalTo(self).offset(12)
            make.bottom.equalTo(self).offset(-12)
        }
    }
    
    private func setImageConstraints(){
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.left.equalTo(contentView.snp.left).offset(12)
            make.centerY.equalTo(contentView.snp.centerY)
        }
    }
    
    private func setStackViewConstraints(){
        stackView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(12)
            make.right.bottom.equalTo(contentView).offset(-12)
            make.left.equalTo(imageView.snp.right).offset(12)
        }
    }
}


