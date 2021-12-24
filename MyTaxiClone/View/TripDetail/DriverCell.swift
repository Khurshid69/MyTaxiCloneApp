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
        header.frame = CGRect(x: 0, y: 0, width: 92, height: 24)
        header.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        header.font = UIFont(name: "Lato-Black", size: 20)
        header.textAlignment = .justified
        header.text = "Водитель"
        header.translatesAutoresizingMaskIntoConstraints = false
        
        return header
    }()
    
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 56, height: 56)
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
        rating.translatesAutoresizingMaskIntoConstraints = false
        
        return rating
    }()
    
    let starImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "") // TODO set image here
        image.frame = CGRect(x: 0, y: 0, width: 10, height: 9.51)
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
        
    }
    
    // MARK: - Embed subviews.
    
    func embedSubviews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func headerConstraints(){
        NSLayoutConstraint.activate([
            drivarHeader.widthAnchor.constraint(equalToConstant: 92),
            drivarHeader.heightAnchor.constraint(equalToConstant: 24),
            drivarHeader.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            drivarHeader.topAnchor.constraint(equalTo: topAnchor, constant: 571)
            
        ])
    }
    
    func profileImageConstraints(){
        NSLayoutConstraint.activate([
            profileImage.widthAnchor.constraint(equalToConstant: 56),
            profileImage.heightAnchor.constraint(equalToConstant: 56),
            profileImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileImage.topAnchor.constraint(equalTo: topAnchor, constant: 616)
        ])
    }
    
    func nameConstraint(){
        NSLayoutConstraint.activate([
            name.widthAnchor.constraint(equalToConstant: 165),
            name.heightAnchor.constraint(equalToConstant: 22),
            name.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 88),
            name.topAnchor.constraint(equalTo: topAnchor, constant: 621)
        ])
    }
    
    func ratingConstraints(){
        NSLayoutConstraint.activate([
            rating.widthAnchor.constraint(equalToConstant: 57),
            rating.heightAnchor.constraint(equalToConstant: 17),
            rating.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 88),
            rating.topAnchor.constraint(equalTo: topAnchor, constant: 648)
        ])
    }
    
    func starConstraints(){
        NSLayoutConstraint.activate([
            starImage.widthAnchor.constraint(equalToConstant: 12),
            starImage.heightAnchor.constraint(equalToConstant: 12),
            starImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            starImage.topAnchor.constraint(equalTo: topAnchor, constant: 651)
        ])
    }
    
    func tripsContstarints(){
        NSLayoutConstraint.activate([
            trips.widthAnchor.constraint(equalToConstant: 60),
            trips.heightAnchor.constraint(equalToConstant: 17),
            trips.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 184),
            trips.topAnchor.constraint(equalTo: topAnchor, constant: 648)
        ])
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
