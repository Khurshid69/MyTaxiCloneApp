//
//  TripVcCell.swift
//  MyTaxiClone
//
//  Created by user on 20/12/21.
//

import UIKit

class CarStatusCell: UITableViewCell {
    
    // MARK: - Properties
    let numberView: UIView = {
        let number = UIView()
        number.layer.cornerRadius = 6
        number.frame = CGRect(x: 0, y: 0, width: 119, height: 32)
        number.backgroundColor = .white
        number.translatesAutoresizingMaskIntoConstraints = false
        
        return number
    }()
    
    let number: UILabel = {
        let number = UILabel()
        number.textAlignment = .justified
        number.attributedText = NSMutableAttributedString(string: "25|L 771 FA", attributes: [NSAttributedString.Key.kern: -0.2])
        number.textColor = .black
        number.translatesAutoresizingMaskIntoConstraints = false
        
        return number
    }()
    
    let carImage: UIImageView = {
        let car = UIImageView()
        car.translatesAutoresizingMaskIntoConstraints = false
        car.frame = CGRect(x: 0, y: 0, width: 104, height: 38)
        car.translatesAutoresizingMaskIntoConstraints = false
        
        return car
    }()
    
    let typeOfCar: UILabel = {
        let carName = UILabel()
        carName.frame = CGRect(x: 0, y: 0, width: 169, height: 18)
        carName.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        carName.font = UIFont(name: "Lato-Medium", size: 14)
        carName.textAlignment = .justified
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.07
        carName.attributedText = NSMutableAttributedString(string: "Чёрный Chevrolet Malibu", attributes: [NSAttributedString.Key.kern: 0.4, NSAttributedString.Key.paragraphStyle: paragraphStyle])
        carName.translatesAutoresizingMaskIntoConstraints = false
        
        return carName
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
    
    func embedSubViews(){
        numberView.addSubview(number)
        addSubview(carImage)
        addSubview(typeOfCar)
    }
    
    // MARK: -  Setup constraints.
    
    func setNumberViewConstraints(){
        NSLayoutConstraint.activate([
            number.widthAnchor.constraint(equalToConstant: 119),
            number.heightAnchor.constraint(equalToConstant: 32),
            number.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            number.topAnchor.constraint(equalTo: topAnchor, constant: 336)
        ])
    }
    
    func setCarImageConstraints(){
        NSLayoutConstraint.activate([
            carImage.widthAnchor.constraint(equalToConstant: 104),
            carImage.heightAnchor.constraint(equalToConstant: 38),
            carImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 256),
            carImage.topAnchor.constraint(equalTo: topAnchor, constant: 346)
        ])
    }
    
    func setCarNameConstraints(){
        NSLayoutConstraint.activate([
            typeOfCar.widthAnchor.constraint(equalToConstant: 104),
            typeOfCar.heightAnchor.constraint(equalToConstant: 38),
            typeOfCar.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 256),
            typeOfCar.topAnchor.constraint(equalTo: topAnchor, constant: 346)
        ])
    }
    
    
    
    
}
