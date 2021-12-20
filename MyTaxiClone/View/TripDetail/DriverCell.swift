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
        
        return header
    }()
    
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 56, height: 56)
        
        return image
    }()
    
    let name: UILabel = {
        let name = UILabel()
        name.frame = CGRect(x: 0, y: 0, width: 165, height: 22)
        name.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        name.font = UIFont(name: "Lato-Bold", size: 18)
        name.textAlignment = .justified
        name.text = "Umid Abdurakhimov"
        
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
        
        return rating
    }()
    
    let starImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "") // TODO set image here
        image.frame = CGRect(x: 0, y: 0, width: 10, height: 9.51)
        
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
        
        return trips
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
//        view.widthAnchor.constraint(equalToConstant: 92).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 571).isActive = true
//
        
    }
    
    func profileImageConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 56).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 56).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 616).isActive = true

    }
    
    func nameConstraint(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 165).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 22).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 88).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 621).isActive = true
//
    }
    
    func ratingConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 57).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 88).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 648).isActive = true
//
        
    }
    
    func starConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 12).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 12).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 160).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 651).isActive = true

    }
    
    func tripsContstarints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 60).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 184).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 648).isActive = true

    }
    
    
    
    
    
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
