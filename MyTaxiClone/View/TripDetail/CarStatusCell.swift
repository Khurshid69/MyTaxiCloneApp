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
        
        
        return number
    }()
    
    let number: UILabel = {
        let number = UILabel()
        number.textAlignment = .justified
        number.attributedText = NSMutableAttributedString(string: "25  L 771 FA", attributes: [NSAttributedString.Key.kern: -0.2])
        
        return number
    }()
    
    let carImage: UIImageView = {
        let car = UIImageView()
        car.translatesAutoresizingMaskIntoConstraints = false
        car.frame = CGRect(x: 0, y: 0, width: 104, height: 38)

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
        return carName
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        embedSubViews()
    }
    // MARK: - Embed subviews.
    
    func embedSubViews(){
        numberView.addSubview(number)
        addSubview(carImage)
        addSubview(typeOfCar)
    }
    
    // MARK: -  Setup constraints.
    
    func setNumberViewConstraints(){
        numberView.snp.makeConstraints { make in
            //
        }
    }
    
    func setNumberConstraints(){
        number.snp.makeConstraints { make in
            //
        }
    }
    
    func setCarImageConstraints(){
        carImage.snp.makeConstraints { make in
            //
        }
    }
    
    func setCarNameConstraints(){
        typeOfCar.snp.makeConstraints { make in
            //
        }
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
