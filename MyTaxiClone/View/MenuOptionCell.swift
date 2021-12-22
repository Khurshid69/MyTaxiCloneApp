//
//  MenuOptionCell.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit

class MenuOptionCell: UITableViewCell {
    
    // MARK: - Properties
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        
        return iv
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 13)
        label.text = "Sample text"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .black
        embedViews()
        
    }
    
    func embedViews(){
        addSubview(iconImageView)
        addSubview(descriptionLabel)
    }
    
    func setDescriptionLabelConstraints(){
        NSLayoutConstraint.activate([
            descriptionLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            descriptionLabel.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 12)
        ])
    }
    
    func setIconImageConstraints(){
        NSLayoutConstraint.activate([
            iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            iconImageView.heightAnchor.constraint(equalToConstant: 27),
            iconImageView.widthAnchor.constraint(equalToConstant: 27)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
}
