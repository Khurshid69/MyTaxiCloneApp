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
        number.backgroundColor = .white
        number.layer.cornerRadius = 7
        number.layer.borderWidth = 1
        number.layer.borderColor = UIColor(red:222/255, green:225/255, blue:227/255, alpha: 1).cgColor
        number.translatesAutoresizingMaskIntoConstraints = false
        
        return number
    }()
    
    let number: UILabel = {
        let number = UILabel()
        number.textAlignment = .justified
        number.attributedText = NSMutableAttributedString(string: "25 | L 771 FA", attributes: [NSAttributedString.Key.kern: -0.2])
        number.textColor = .black
        number.translatesAutoresizingMaskIntoConstraints = false
        
        return number
    }()
    
    let carImage: UIImageView = {
        let car = UIImageView()
        car.image = UIImage(named: "Bitmap-2")
        car.translatesAutoresizingMaskIntoConstraints = false
        
        return car
    }()
    
    let typeOfCar: UILabel = {
        let carName = UILabel()
        carName.textColor = UIColor(red: 0.521, green: 0.521, blue: 0.521, alpha: 1)
        carName.textAlignment = .justified
        carName.text = "Чёрный Chevrolet Malibu"
        carName.font = UIFont.boldSystemFont(ofSize: 14)
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
            make.size.equalTo(CGSize(width: 119, height: 33))
            make.left.top.equalTo(self).offset(16)
        }
    }
    
    func setNumberConstraints(){
        number.snp.makeConstraints { make in
            make.center.equalTo(numberView)
        }
    }
    
    func setCarImageConstraints(){
        carImage.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 104, height: 38))
            make.right.equalTo(self).offset(-15)
            make.top.equalTo(self).offset(26)
        }
    }
    
    func setCarNameConstraints(){
        typeOfCar.snp.makeConstraints { make in
            make.size.equalTo(CGSize(width: 230, height: 11))
            make.top.equalTo(numberView.snp_bottomMargin).offset(5)
            make.left.equalTo(self).offset(17)
            make.bottom.equalTo(self).offset(-8)
        }
    }
    
    
    
    
}
