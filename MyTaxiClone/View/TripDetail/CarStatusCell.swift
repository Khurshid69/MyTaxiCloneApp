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
        number.backgroundColor = .black
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
        embedSubViews()
        setUpConstraints()
    }
    
    // MARK: - Embed subviews.
    
    func embedSubViews(){
        self.addSubview(numberView)
        numberView.addSubview(number)
        self.addSubview(carImage)
        self.addSubview(typeOfCar)
        
    }
    
    func setUpConstraints(){
        setNumberViewConstraints()
        setNumberConstraints()
        setCarImageConstraints()
        setCarNameConstraints()
    }
    
    // MARK: -  Setup constraints.
    
    func setNumberViewConstraints(){
        numberView.snp.makeConstraints { make in
            make.left.top.equalTo(self).offset(16)
            make.bottom.equalTo(typeOfCar).offset(8)
        }
    }
    
    func setNumberConstraints(){
        number.snp.makeConstraints { make in
            make.top.equalTo(numberView).offset(5)
            make.bottom.equalTo(numberView).offset(4)
            make.left.right.equalTo(numberView).offset(6)
        }
    }
    
    func setCarImageConstraints(){
        carImage.snp.makeConstraints { make in
            make.right.equalTo(self).offset(15)
            make.top.equalTo(self).offset(26)
        }
    }
    
    func setCarNameConstraints(){
        typeOfCar.snp.makeConstraints { make in
            make.top.equalTo(numberView).offset(12)
            make.left.equalTo(self).offset(17)
            make.bottom.equalTo(self).offset(5)
        }
    }
    
    
    
    
}
