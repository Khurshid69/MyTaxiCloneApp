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
        fromPointDot.image = UIImage(named: "Frame 621")
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
        streetName.textAlignment = .justified
        streetName.font = UIFont.boldSystemFont(ofSize: 14)
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
        streetName.textAlignment = .justified
        streetName.font = UIFont.boldSystemFont(ofSize: 14)
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
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let helpButtonsString: UILabel = {
        let string = UILabel()
        string.textColor = UIColor(red: 0.929, green: 0.695, blue: 0.093, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.97
        string.textAlignment = .justified
        string.attributedText = NSMutableAttributedString(string: "Помощь", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    /// ReDo Button
    let ReDoView: UIView = {
        let button = UIView()
        button.layer.backgroundColor = UIColor(red: 0.925, green: 0.949, blue: 0.992, alpha: 1).cgColor
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    let ReDoButtonImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21250") // TODO - set Image here
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
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    /// Call Button
    let CallView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 0.933, green: 0.976, blue: 0.949, alpha: 1).cgColor
        view.layer.cornerRadius = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    let CallViewImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Group 21251") // TODO - set Image here
        image.translatesAutoresizingMaskIntoConstraints = false
        
        return image
    }()
    
    let CallString: UILabel = {
        let string = UILabel()
        string.frame = CGRect(x: 0, y: 0, width: 48, height: 14)
        string.textColor = UIColor(red: 0.278, green: 0.624, blue: 0.416, alpha: 1)
        string.font = UIFont(name: "Lato-SemiBold", size: 12)
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 0.97
        string.textAlignment = .justified
        string.attributedText = NSMutableAttributedString(string: "Позвонить", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.translatesAutoresizingMaskIntoConstraints = false
        
        return string
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUp()
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUp(){
        embedSubViews()
        setUpConstraints()
    }
    
    // MARK: - Embed subviews.
    func embedSubViews(){
        self.addSubview(fromPointDot)
        self.addSubview(starterStreetName)
        self.addSubview(ToPointDot)
        self.addSubview(finishStreetName)
        self.addSubview(helpButton)
        helpButton.addSubview(helpButtonImage)
        helpButton.addSubview(helpButtonsString)
        self.addSubview(ReDoView)
        ReDoView.addSubview(ReDoButtonImage)
        ReDoView.addSubview(ReDoButtonString)
        self.addSubview(CallView)
        CallView.addSubview(CallViewImage)
        CallView.addSubview(CallString)
        
    }
    
    func setUpConstraints(){
        redPoint()
        bluePoint()
        startedStringConstraints()
        finishStringConstraints()
        helpButtonConstraints()
        helpButtonImageConstraints()
        helpButtonStringConstraints()
        reDoButtonConstraints()
        reDoButtonImageConstraints()
        reDoButtonStringConstraints()
        callButtonConstraints()
        callButtonImageConstraints()
        callButtonStringConstraints()
    }
    
    
    // MARK: -  Setup constraints.
    
    func redPoint(){
        fromPointDot.snp.makeConstraints { make in
            make.top.equalTo(self).offset(16)
            make.size.equalTo(CGSize(width: 24, height: 24))
            make.left.equalTo(self).offset(16)
        }
    }
    
    func bluePoint(){
        ToPointDot.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 24, height: 24))
            make.left.equalTo(self).offset(16)
            make.top.equalTo(fromPointDot.snp_bottomMargin).offset(13)
            
        }
    }
    
    func startedStringConstraints(){
        starterStreetName.snp.makeConstraints { make in
            make.left.equalTo(fromPointDot.snp_rightMargin).offset(13.3)
            make.top.equalTo(self).offset(18)
        }
    }
    
    func finishStringConstraints(){
        finishStreetName.snp.makeConstraints { make in
            make.left.equalTo(ToPointDot.snp_rightMargin).offset(13.3)
            make.top.equalTo(starterStreetName.snp_bottomMargin).offset(20)
        }
    }
    
    // BUTTONS VIEW's
    
    func helpButtonConstraints(){
        helpButton.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 109, height: 56))
            make.top.equalTo(finishStreetName.snp_bottomMargin).offset(24)
            make.left.equalTo(self).offset(18)
        }
    }
    
    func reDoButtonConstraints(){
        ReDoView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 109, height: 56))
            make.top.equalTo(finishStreetName.snp_bottomMargin).offset(23)
            make.left.equalTo(helpButton.snp_rightMargin).offset(16)
        }
    }
    
    func callButtonConstraints(){
        CallView.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 109, height: 56))
            make.top.equalTo(finishStreetName.snp.bottomMargin).offset(23)
            make.left.equalTo(ReDoView.snp_rightMargin).offset(16)
        }
    }
    
    // BUTTONS VIEW's images
    
    func helpButtonImageConstraints(){
        helpButtonImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 20, height: 20))
            make.top.equalTo(helpButton).offset(10)
            make.left.equalTo(helpButton).offset(45)
            make.right.equalTo(helpButton).offset(-44)
        }
    }
    
    func reDoButtonImageConstraints(){
        ReDoButtonImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 20, height: 20))
            make.top.equalTo(ReDoView).offset(10)
            make.left.equalTo(ReDoView).offset(45)
            make.right.equalTo(ReDoView).offset(-44)
        }
    }
    
    func callButtonImageConstraints(){
        CallViewImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 20, height: 20))
            make.top.equalTo(CallView).offset(10)
            make.left.equalTo(CallView).offset(45)
            make.right.equalTo(CallView).offset(-44)
        }
    }
    
    
    // BUTTONS VIEW's strings
    
    func helpButtonStringConstraints(){
        helpButtonsString.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 48, height: 14))
            make.top.equalTo(helpButtonImage.snp_bottomMargin).offset(10)
            make.left.equalTo(helpButton.snp_leftMargin).offset(20)
            make.right.equalTo(helpButton).offset(-5)
        }
    }
    
    func reDoButtonStringConstraints(){
        ReDoButtonString.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 48, height: 14))
            make.top.equalTo(ReDoButtonImage.snp_bottomMargin).offset(10)
            make.left.equalTo(ReDoView.snp_leftMargin).offset(10)
            make.right.equalTo(ReDoView).offset(-15)
        }
    }
    
    func callButtonStringConstraints(){
        CallString.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 48, height: 14))
            make.top.equalTo(CallViewImage.snp_bottomMargin).offset(10)
            make.left.equalTo(CallView.snp_leftMargin).offset(10)
            make.right.equalTo(CallView).offset(-5)
        }
    }
}
