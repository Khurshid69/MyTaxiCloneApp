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
        fromPointDot.translatesAutoresizingMaskIntoConstraints = false
        
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
        streetName.translatesAutoresizingMaskIntoConstraints = false
        
        return streetName
    }()
    
    /// to next location
    let ToPointDot: UIImageView = {
        let toPointDot = UIImageView()
        toPointDot.image = UIImage(named: "Frame 620")
        toPointDot.frame = CGRect(x: 0, y: 0, width: 13.4, height: 13.4)
        toPointDot.backgroundColor = .white
        toPointDot.translatesAutoresizingMaskIntoConstraints = false
        
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
        streetName.translatesAutoresizingMaskIntoConstraints = false
        
        return streetName
    }()
    
    // MARK: Button's statement
    
    /// Help Button
    let helpButton: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        view.layer.backgroundColor = UIColor(red: 0.996, green: 0.973, blue: 0.91, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let helpButtonImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "help-circle.2 1") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        image.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    /// ReDo Button
    let ReDoView: UIView = {
        let button = UIView()
        button.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        button.layer.backgroundColor = UIColor(red: 0.925, green: 0.949, blue: 0.992, alpha: 1).cgColor
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let ReDoButtonImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21250") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        image.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    /// Call Button
    let CallView: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 109, height: 56)
        view.layer.backgroundColor = UIColor(red: 0.925, green: 0.949, blue: 0.992, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let CallViewImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21251") // TODO - set Image here
        image.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        image.translatesAutoresizingMaskIntoConstraints = false
        
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
        string.translatesAutoresizingMaskIntoConstraints = false
        
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
        NSLayoutConstraint.activate([
            fromPointDot.widthAnchor.constraint(equalToConstant: 24),
            fromPointDot.heightAnchor.constraint(equalToConstant: 24),
            fromPointDot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            fromPointDot.topAnchor.constraint(equalTo: topAnchor, constant: 415)
        ])
        
    }
    
    func redPoint(){
        NSLayoutConstraint.activate([
            ToPointDot.widthAnchor.constraint(equalToConstant: 24),
            ToPointDot.heightAnchor.constraint(equalToConstant: 24),
            ToPointDot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            ToPointDot.topAnchor.constraint(equalTo: topAnchor, constant: 447)
        ])
    }
    
    func startedStringConstraints(){
        NSLayoutConstraint.activate([
            starterStreetName.widthAnchor.constraint(equalToConstant: 205),
            starterStreetName.heightAnchor.constraint(equalToConstant: 17),
            starterStreetName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 48),
            starterStreetName.topAnchor.constraint(equalTo: topAnchor, constant: 417)
        ])
    }
    
    func finishStringConstraints(){
        NSLayoutConstraint.activate([
            finishStreetName.widthAnchor.constraint(equalToConstant: 196),
            finishStreetName.heightAnchor.constraint(equalToConstant: 17),
            finishStreetName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 48),
            finishStreetName.topAnchor.constraint(equalTo: topAnchor, constant: 449)
        ])
    }
    
    func helpButtonConstraints(){
        NSLayoutConstraint.activate([
            helpButton.widthAnchor.constraint(equalToConstant: 109),
            helpButton.heightAnchor.constraint(equalToConstant: 56),
            helpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            helpButton.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
        
    }
    
    func reDoButtonConstraints(){
        NSLayoutConstraint.activate([
            ReDoButtonString.widthAnchor.constraint(equalToConstant: 109),
            ReDoButtonString.heightAnchor.constraint(equalToConstant: 56),
            ReDoButtonString.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            ReDoButtonString.topAnchor.constraint(equalTo: topAnchor, constant: 0)
        ])
    }
    
    func callButtonConstraints(){
        NSLayoutConstraint.activate([
            helpButtonsString.widthAnchor.constraint(equalToConstant: 109),
            helpButtonsString.heightAnchor.constraint(equalToConstant: 56),
            helpButtonsString.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            helpButtonsString.topAnchor.constraint(equalTo: topAnchor, constant: 0)
            
        ])
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
