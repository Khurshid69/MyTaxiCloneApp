//
//  TotalCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TotalCell: UITableViewCell {
    
    // MARK: - Properties
    let totalHeader: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 57, height: 24)
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Black", size: 20)
        string.textAlignment = .justified
        string.text = "Итого"
        string.font = UIFont.boldSystemFont(ofSize: 20)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    let totalSum: UILabel = {
        let sum = UILabel()
        sum.frame = CGRect(x: 0, y: 0, width: 104, height: 24)
        sum.backgroundColor = .white
        sum.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        sum.font = UIFont(name: "Lato-Black", size: 20)
        sum.textAlignment = .justified
        sum.text = "39,600 UZS"
        sum.font = UIFont.boldSystemFont(ofSize: 20)
        sum.translatesAutoresizingMaskIntoConstraints = false
        
        return sum
    }()
    
    let deleteView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 1, green: 0.917, blue: 0.913, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        
        
        return view
    }()
    
    let deleteImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "ic_delete_24px 1")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
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
        self.addSubview(totalHeader)
        self.addSubview(totalSum)
        self.addSubview(deleteView)
        deleteView.addSubview(deleteImage)
    }
    
    // MARK: -  Setup constraints.
    
    func setUpConstraints(){
        headerConstraints()
        sumConstraints()
        deleteViewConstraints()
        deleteImageConstraints()
    }
    
    func headerConstraints(){
        totalHeader.snp.makeConstraints { make in
            make.left.equalTo(self).offset(16)
            make.top.equalTo(self).offset(12)
        }
    }
    
    func sumConstraints(){
        totalSum.snp.makeConstraints { make in
            make.top.equalTo(12)
            make.right.equalTo(self).offset(-16)
        }
    }
    
    func deleteViewConstraints(){
        deleteView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: UIScreen.main.bounds.width - 16, height: 55))
            make.left.equalTo(self).offset(16)
            make.right.equalTo(self).offset(-16)
            make.top.equalTo(totalHeader.snp_bottomMargin).offset(25)
        }
    }
    
    func deleteImageConstraints(){
        deleteImage.snp.makeConstraints { make in
            make.center.equalTo(deleteView)
        }
    }
}
