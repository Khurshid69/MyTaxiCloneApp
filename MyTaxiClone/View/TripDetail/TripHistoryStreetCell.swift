//
//  TripHistoryStreetCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit
import SnapKit

class TripHistoryStreetCell: UITableViewCell {
    
    // MARK: - Properties
    
    /// from your location
    let fromPointDot: UIImageView = {
        let fromPointDot = UIImageView()
        fromPointDot.image = UIImage(named: "Frame 6201")
        fromPointDot.frame = CGRect(x: 0, y: 0, width: 13.4, height: 13.4)
        fromPointDot.backgroundColor = .white
        
        return fromPointDot
    }()
    
    let starterStreetName: UILabel = {
        let streetName = UILabel()
        streetName.frame = CGRect(x: 0, y: 0, width: 205, height: 17)
        streetName.backgroundColor = .white
        streetName.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        streetName.font = UIFont(name: "Lato-Bold", size: 14)
        streetName.textAlignment = .justified
        streetName.text = "улица Sharof Rashidov, Ташкент"
        
        return streetName
    }()
    
    /// to next location
    let ToPointDot: UIImageView = {
        let toPointDot = UIImageView()
        toPointDot.image = UIImage(named: "Frame 620")
        toPointDot.frame = CGRect(x: 0, y: 0, width: 13.4, height: 13.4)
        toPointDot.backgroundColor = .white
        
        return toPointDot
    }()
    
    let finishStreetName: UILabel = {
        let streetName = UILabel()
        streetName.frame = CGRect(x: 0, y: 0, width: 196, height: 17)
        streetName.backgroundColor = .white
        streetName.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        streetName.font = UIFont(name: "Lato-Bold", size: 14)
        streetName.textAlignment = .justified
        streetName.text = "5a улица Асадуллы Ходжаева"
        
        return streetName
    }()
    
    // MARK: Button's statement
    
    /// Help Button
    let helpButton: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        view.layer.backgroundColor = UIColor(red: 0.996, green: 0.973, blue: 0.91, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let helpButtonImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "help-circle.2 1") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        
        return image
    }()
    
    let helpButtonsString: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 48, height: 14)
        string.textColor = UIColor(red: 0.929, green: 0.695, blue: 0.093, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.97
        string.textAlignment = .justified
        string.attributedText = NSMutableAttributedString(string: "Помощь", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        return string
    }()
    
    /// ReDo Button
    let ReDoView: UIView = {
        let button = UIView()
        button.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        button.layer.backgroundColor = UIColor(red: 0.925, green: 0.949, blue: 0.992, alpha: 1).cgColor
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    let ReDoButtonImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21250") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        
        return image
    }()
    
    let ReDoButtonString: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 48, height: 14)
        string.textColor = UIColor(red: 0.246, green: 0.484, blue: 0.921, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.97
        string.textAlignment = .justified
        string.attributedText = NSMutableAttributedString(string: "Повторить", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        return string
    }()
    
    /// Call Button
    let CallView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        view.layer.backgroundColor = UIColor(red: 0.925, green: 0.949, blue: 0.992, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        
        return view
    }()
    
    let CallViewImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21251") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        
        return image
    }()
    
    let CallString: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 48, height: 14)
        string.textColor = UIColor(red: 0.246, green: 0.484, blue: 0.921, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.97
        string.textAlignment = .justified
        string.attributedText = NSMutableAttributedString(string: "Позвонить", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        return string
    }()
    
  
    override func awakeFromNib() {
        super.awakeFromNib()
        embedSubViews()
    }
    
    // MARK: - Embed subviews.
    func embedSubViews(){
        
    }
    
    
    // MARK: -  Setup constraints.
    
    func bluePoint(){
//        view.widthAnchor.constraint(equalToConstant: 24).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 415).isActive = true

    }
    
    func redPoint(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 24).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 16).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 447).isActive = true
//
    }
    
    func startedStringConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 205).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 48).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 417).isActive = true
//
    }
    
    func finishStringConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 196).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 48).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 449).isActive = true
//
    }
    
    func helpButtonConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 109).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 56).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true

    }
    
    func reDoButtonConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 109).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 56).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true

    }
    
    func callButtonConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 109).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 56).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 0).isActive = true

    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
