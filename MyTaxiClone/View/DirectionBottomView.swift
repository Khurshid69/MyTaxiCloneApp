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
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 12
        contentView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 137)
        
        return contentView
    }()
    
    var stackView: UIView = {
        let stackView = UIView()
        stackView.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1)
        stackView.layer.cornerRadius = 12
        stackView.clipsToBounds = true

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
        string.text = "Somethere"
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        string.font = UIFont(name: "Avenir ", size: 12)
        
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
        image.image = UIImage(named: "Frame 620")
        image.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
        
        return image
    }()
    
    var whereLabel: UILabel = {
        let string = UILabel()
        string.text = "Куда?"
        string.font = UIFont.boldSystemFont(ofSize: 14)
        string.textColor = UIColor(red: 0.692, green: 0.692, blue: 0.692, alpha: 1)
        
        return string
    }()
    
    var vectorButtonView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 0.9, green: 0.899, blue: 0.891, alpha: 1).cgColor
        
        return view
    }()
    
    var tapButtonImageView: UIImageView = {
        let image = UIImageView()
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
        stackView.addSubview(bottomStacks)
        bottomStacks.addSubview(blueImage)
        bottomStacks.addSubview(whereLabel)
        bottomStacks.addSubview(vectorButtonView)
        vectorButtonView.addSubview(tapButtonImageView)
        
    }
    
    // Setting Up Constraints to EmbedSubviews.
    private func setupSubviewConstriants() {
        setContentViewConstraints()
        setStackViewConstraints()
        setRedPinImageConstraints()
        setBottomStackConstraints()
        setBlueImageConstraints()
        setWhereLabelConstraints()
        setVektorViewConstraints()
        setVektorImageConstraints()
    }
}

extension DirectionBottomView {
    private func setContentViewConstraints(){
        NSLayoutConstraint.activate([
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: 1)
        ])
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
            make.bottom.equalTo(stackView.snp_topMargin).offset(-14)
            make.size.equalTo(CGSize(width: 24, height: 24))
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
            make.size.equalTo(CGSize(width: 24, height: 24))
        }
    }
    
    private func setWhereLabelConstraints(){
        whereLabel.snp.makeConstraints { make in
            make.left.equalTo(blueImage.snp_rightMargin).offset(13.3)
            make.top.equalTo(bottomStacks).offset(-18)
            make.bottom.equalTo(bottomStacks).offset(17)
        }
    }
    
    private func setVektorViewConstraints(){
        vectorButtonView.snp.makeConstraints { make in
            make.bottom.top.right.equalTo(bottomStacks)
            make.size.equalTo(CGSize(width: 60, height: 52))
        }
    }
    private func setVektorImageConstraints(){
        tapButtonImageView.snp.makeConstraints { make in
            make.center.equalTo(vectorButtonView)
        }
    }
}
