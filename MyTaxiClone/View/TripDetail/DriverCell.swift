//
//  DriverCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class DriverCell: UITableViewCell {
    
    // MARK: - Properties
    let drivarHeader: UILabel = {
        let header = UILabel()
        header.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        header.font = UIFont(name: "Avenir", size: 24)
        header.textAlignment = .justified
        header.text = "Водитель"
        header.font = UIFont.boldSystemFont(ofSize: 20)
        header.translatesAutoresizingMaskIntoConstraints = false
        
        return header
    }()
    
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "account 1")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.frame = CGRect(x: 0, y: 0, width: 165, height: 22)
        name.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        name.font = UIFont(name: "Lato-Bold", size: 18)
        name.textAlignment = .justified
        name.text = "Umid Abdurakhimov"
        name.font = UIFont.boldSystemFont(ofSize: 18)
        name.translatesAutoresizingMaskIntoConstraints = false
        
        return name
    }()
    
    let rating: UILabel = {
        let rating = UILabel()
        rating.frame = CGRect(x: 0, y: 0, width: 57, height: 17)
        rating.backgroundColor = .white
        rating.textColor = UIColor(red: 0.721, green: 0.721, blue: 0.721, alpha: 1)
        rating.font = UIFont(name: "Lato-SemiBold", size: 14)
        rating.textAlignment = .justified
        rating.text = "Рейтинг: 5"
        rating.font = UIFont.boldSystemFont(ofSize: 14)
        rating.translatesAutoresizingMaskIntoConstraints = false
        
        return rating
    }()
    
    let starImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "star 1") // TODO set image here
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let trips: UILabel = {
        let trips = UILabel()
        trips.frame = CGRect(x: 0, y: 0, width: 57, height: 17)
        trips.backgroundColor = .white
        trips.textColor = UIColor(red: 0.721, green: 0.721, blue: 0.721, alpha: 1)
        trips.font = UIFont(name: "Lato-SemiBold", size: 14)
        trips.textAlignment = .justified
        trips.text = "Поездки: 1 885"
        trips.font = UIFont.boldSystemFont(ofSize: 14)
        trips.translatesAutoresizingMaskIntoConstraints = false
        
        return trips
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
        self.addSubview(drivarHeader)
        self.addSubview(profileImage)
        self.addSubview(name)
        self.addSubview(rating)
        self.addSubview(starImage)
        self.addSubview(trips)
    }
    
    func setUpConstraints(){
        headerConstraints()
        profileImageConstraints()
        nameConstraint()
        ratingConstraints()
        starConstraints()
        tripsContstarints()
    }
    
    // MARK: -  Setup constraints.
    func headerConstraints(){
        drivarHeader.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 92, height: 24))
            make.top.equalTo(self).offset(5)
            make.left.equalTo(self).offset(16)
        }
    }
    
    func profileImageConstraints(){
        profileImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 56, height: 56))
            make.top.equalTo(drivarHeader.snp_bottomMargin).offset(21)
            make.left.equalTo(self).offset(16)
        }
    }
    
    func nameConstraint(){
        name.snp.makeConstraints { make in
            make.left.equalTo(profileImage.snp_rightMargin).offset(16)
            make.top.equalTo(drivarHeader.snp_bottomMargin).offset(26)
        }
    }
    
    func ratingConstraints(){
        rating.snp.makeConstraints { make in
            make.left.equalTo(profileImage.snp_rightMargin).offset(16)
            make.top.equalTo(name.snp_bottomMargin).offset(12)
        }
    }
    
    func starConstraints(){
        starImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 12, height: 12))
            make.left.equalTo(rating.snp_rightMargin).offset(15)
            make.top.equalTo(name.snp_bottomMargin).offset(15)
        }
    }
    
    func tripsContstarints(){
        trips.snp.makeConstraints { make in
            make.left.equalTo(starImage.snp_rightMargin).offset(30)
            make.top.equalTo(name.snp_bottomMargin).offset(12)
        }
    }
}
