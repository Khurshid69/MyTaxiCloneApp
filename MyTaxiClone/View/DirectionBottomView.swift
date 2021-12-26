//
//  DirectionView.swift
//  MyTaxiClone
//
//  Created by user on 26/12/21.
//

import UIKit

class DirectionBottomView: UIView {
    var contentView: UIView = {
        let contentView = UIView()
        contentView.backgroundColor = .red
    
        return contentView
    }()
    
    var stackView: UIView = {
        let stackView = UIView()
        stackView.backgroundColor = .white
        stackView.layer.cornerRadius = 12
        stackView.frame = CGRect(x: 0, y: 0, width: 343, height: 105)

        return stackView
    }()
    
    var redPinImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "light red pin-1")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
    }()
    
    var locationViewerLabel: UILabel = {
        let string = UILabel()
        string.text = "somethere"
        string.frame = CGRect(x: 0, y: 0, width: 196, height: 17)
        string.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        string.font = UIFont(name: "Avenir", size: 14)
        
        return string
    }()
    
    var bottomStacks: UIView = {
        let view = UIView()
        view.frame = CGRect(x: 0, y: 0, width: 343, height: 52)
        view.layer.backgroundColor = UIColor(red: 0.942, green: 0.942, blue: 0.942, alpha: 1).cgColor
        
        return view
    }()
    
    var blueImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "Frame 62023")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
    }()
    
    
    var whereLabel: UILabel = {
        let string = UILabel()
        string.text = "Куда?"
        string.frame = CGRect(x: 0, y: 0, width: 196, height: 17)
        string.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        string.font = UIFont(name: "Avenir", size: 14)
        
        return string
    }()
    
    var tapButtonView: UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 60, height: 52)
        image.layer.backgroundColor = UIColor(red: 0.9, green: 0.899, blue: 0.891, alpha: 1).cgColor
        image.image = UIImage(named: "Vector")
        
        return image
    }()
    
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        embedSubViews()
        setupSubviewConstriants()
    }
    
    // Embed subviews.
    private func embedSubViews(){
        addSubview(contentView)
        contentView.addSubview(stackView)
        stackView.addSubview(redPinImage)
        stackView.addSubview(locationViewerLabel)
        stackView.addSubview(bottomStacks)
        bottomStacks.addSubview(blueImage)
        bottomStacks.addSubview(whereLabel)
        bottomStacks.addSubview(tapButtonView)
    }
    
    // Setting Up Constraints to EmbedSubviews.
    private func setupSubviewConstriants() {
        setContentViewConstraints()
        setStackViewConstraints()
        setRedPinImageConstraints()
        setLocationViewerStringConstraints()
        setBottomStackConstraints()
        setBlueImageConstraints()
        setWhereLabelConstraints()
        setTapButtonViewConstraints()
    }
}

extension DirectionBottomView {
    private func setContentViewConstraints(){
        contentView.snp.makeConstraints { make in
//            let width = UIScreen.main.bounds.width
//            let height: CGFloat = 375
            NSLayoutConstraint.activate([
                contentView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: 137),
                contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 100)
            ])
            
        }
    }
    
    private func setStackViewConstraints(){
        stackView.snp.makeConstraints { make in
            make.left.equalTo(contentView).offset(16)
            make.right.equalTo(contentView).offset(-16)
            make.top.equalTo(contentView).offset(16)
            make.bottom.equalTo(contentView).offset(-16)
        }
    }
    
    private func setRedPinImageConstraints(){
        redPinImage.snp.makeConstraints { make in
            make.left.equalTo(stackView).offset(12)
            make.top.equalTo(stackView).offset(14)
            make.bottom.equalTo(bottomStacks).offset(14)
        }
    }
    
    private func setLocationViewerStringConstraints(){
        locationViewerLabel.snp.makeConstraints { make in
            make.left.equalTo(redPinImage).offset(8)
        }
    }
    
    private func setBottomStackConstraints(){
        bottomStacks.snp.makeConstraints { make in
            bottomStacks.snp.makeConstraints { make in
                make.left.right.bottom.equalTo(stackView)
            }
        }
    }
    
    private func setBlueImageConstraints(){
        blueImage.snp.makeConstraints { make in
            make.left.equalTo(bottomStacks).offset(12)
            make.top.equalTo(bottomStacks).offset(14)
            make.bottom.equalTo(bottomStacks).offset(-14)
        }
    }
    
    private func setWhereLabelConstraints(){
        whereLabel.snp.makeConstraints { make in
            make.left.equalTo(blueImage).offset(13.3)
            make.top.equalTo(bottomStacks).offset(-18)
            make.bottom.equalTo(bottomStacks).offset(17)
            
        }
    }
    
    private func setTapButtonViewConstraints(){
        tapButtonView.snp.makeConstraints { make in
            make.bottom.top.right.equalTo(bottomStacks)
            
        }
    }
    
}
