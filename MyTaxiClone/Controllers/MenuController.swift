//
//  MenuController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import SnapKit

private let reuseIdentifer = "MenuOptionCell"

class MenuController: UIViewController {
    
    // MARK: - Properties
    var tableView: UITableView!
    var delegete: HomeControllerDelegete?
    
    // MARK: - Init

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
        
        let contentView = UIView(frame: CGRect(x: 0, y: 0, width: 285, height: 88))
        contentView.backgroundColor = UIColor(red: 0.15, green: 0.15, blue: 0.14, alpha: 1.0)
        contentView.layer.cornerRadius = 12
        
        let header = UIView(frame: CGRect(x:0, y: 40, width: 200, height: 88))
        
        let user: UIStackView = {
            let nameLabel = UILabel()
            nameLabel.text = "Islombek \nNormuhammadov"
            nameLabel.font = UIFont.systemFont(ofSize: 18)
            nameLabel.textColor = .white
            nameLabel.numberOfLines = 3
            nameLabel.textAlignment = .left
            
            let PhoneNumberLabel = UILabel()
            PhoneNumberLabel.text = "+998(97) 000-00-00"
            PhoneNumberLabel.textColor = UIColor(red: 0.49, green:  0.49, blue:  0.49, alpha: 1.0)
            PhoneNumberLabel.font = UIFont.systemFont(ofSize: 14)
            PhoneNumberLabel.textColor = .white
            PhoneNumberLabel.textAlignment = .left
            PhoneNumberLabel.numberOfLines = 3
        }()
        
        
        

        header.addSubview(contentView)
        contentView.addSubview(user)

        tableView.tableHeaderView = header
        

        let imageView : UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage(named: "account 1")
            header.addSubview(imageView)

            return imageView
        }()
        
        
        imageView.snp.makeConstraints { make in
            make.edges.equalTo(contentView).inset(UIEdgeInsets(top: 14, left: 14, bottom: 14, right: 209))
        }
        
        nameLabel.snp.makeConstraints { make in
            make.center.left.equalTo(header).inset(UIEdgeInsets(top: 13, left: 88, bottom: 33, right: 24))
        }
        
        PhoneNumberLabel.snp.makeConstraints { make in
            make.center.left.equalTo(header).inset(UIEdgeInsets(top: 57, left: 88, bottom: 14, right: 67))
        }
        
        
        
    }

    // MARK: - Handlers
    
    func configureTableView(){
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifer)
        tableView.backgroundColor = .black
        tableView.separatorColor = .none
        tableView.rowHeight = 55
    
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    }
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MenuOptionCell
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegete?.handleMenuToggle(forMenuOption: menuOption)
    }
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 88
//    }
}

