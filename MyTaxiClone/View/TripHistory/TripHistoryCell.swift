//
//  TripHistoryCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryCell: UITableViewCell {
    
    // MARK: - Properties
    let container: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 343, height: 118)
        view.backgroundColor = .white
        
        return view
    }()
    
    let redImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
    }()
    
    let redsStreet: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 287, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.text = "улица Sharof Rashidov, Ташкент"
        
        return string
    }()
    
    let blueImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
    }()
    
    let blueStreet: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 287, height: 17)
        string.backgroundColor = .white
        string.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        string.font = UIFont(name: "Lato-Bold", size: 14)
        string.text = "5a улица Асадуллы Ходжаева"
        
        return string
    }()
    
    let bottomFrame: UIView = {
        let frame = UIView()
        frame.frame = CGRect(x: 0, y: 0, width: 343, height: 42)
        frame.backgroundColor = .white
        frame.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        
        return frame
    }()
    
    let frameClock: UILabel = {
        let clock = UILabel()
        clock.frame = CGRect(x: 0, y: 0, width: 85, height: 18)
        clock.backgroundColor = .white
        clock.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        clock.font = UIFont(name: "Lato-Bold", size: 14)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.07
        clock.attributedText = NSMutableAttributedString(string: "12:00 - 12:19", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        
        return clock
    }()
    
    let frameImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "")
        image.frame = CGRect(x: 0, y: 0, width: 108, height: 39)
        
        return image
    }()
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - Embed subviews.
    
    
    
    
    // MARK: -  Setup constraints.
    
    func redImageConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 24).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 12).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 12).isActive = true

    }
    
    func blueImageConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 24).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 24).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 12).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 40).isActive = true

    }
    
    func redStreetConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 287).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 44).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 14).isActive = true

    }
    
    func blueStreetConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 287).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 17).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 44).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 42).isActive = true

    }
    
    func bottomFrameConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 343).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 42).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 0).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 76).isActive = true

    }
    
    func clockConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 85).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 18).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 20).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: 12).isActive = true

    }
    
    func carImageConstraints(){
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.widthAnchor.constraint(equalToConstant: 108).isActive = true
//        view.heightAnchor.constraint(equalToConstant: 39).isActive = true
//        view.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 225).isActive = true
//        view.topAnchor.constraint(equalTo: parent.topAnchor, constant: -10).isActive = true
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
