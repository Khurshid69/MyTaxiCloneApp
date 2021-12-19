//
//  UserView.swift
//  MyTaxiClone
//
//  Created by user on 19/12/21.
//

import Foundation
import UIKit
import SnapKit

class UserView: MenuController{
    
    private func setupTableHeaderView() {
        // Init views.
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width-100, height: 88))
        let contentView = UIView()
        contentView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.14, alpha: 1.0)
        contentView.layer.cornerRadius = 12
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "account 1")
        
        let nameLabel = UILabel()
        nameLabel.text = "Islombek"
        nameLabel.font = UIFont.systemFont(ofSize: 18)
        nameLabel.textColor = .white
        
        let surenameLabel = UILabel()
        surenameLabel.text = "Normuhammadov"
        surenameLabel.font = UIFont.systemFont(ofSize: 18)
        surenameLabel.textColor = .white
        
        let phoneNumberLabel = UILabel()
        phoneNumberLabel.text = "+998(97) 000-00-00"
        phoneNumberLabel.textColor = UIColor(red: 0.49, green:  0.49, blue:  0.49, alpha: 1.0)
        phoneNumberLabel.font = UIFont.systemFont(ofSize: 14)
        phoneNumberLabel.textColor = .white
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        
        // Embed subviews.
        headerView.addSubview(contentView)
        contentView.addSubview(imageView)
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(surenameLabel)
        stackView.addArrangedSubview(phoneNumberLabel)
        
        // Setup constraints.
        imageView.snp.makeConstraints { make in
            make.width.height.equalTo(56)
            make.left.equalTo(contentView.snp.left).offset(12)
            make.centerY.equalTo(contentView.snp.centerY)
        }
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(contentView).offset(12)
            make.right.bottom.equalTo(contentView).offset(-12)
            make.left.equalTo(imageView.snp.right).offset(12)
        }
        
        contentView.snp.makeConstraints { make in
            make.left.equalTo(headerView).offset(16)
            make.right.equalTo(headerView).offset(-72)
            make.top.bottom.equalTo(headerView)
        }
        
    }
    
}
