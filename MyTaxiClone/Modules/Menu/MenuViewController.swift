//
//  MenuViewController.swift
//  MyTaxiClone
//
//  Created by user on 16/12/21.
//

import UIKit
import SnapKit

class MenuViewController: BaseViewController {
    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(MenuOptionCell.self)
        view.backgroundColor = .black
        view.separatorColor = .darkGray
        view.rowHeight = 52
        view.tableHeaderView = makeTableHeaderView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    weak var delegete: HomeViewControllerDelegete?
    private let reuseIdentifer = "MenuOptionCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
    
    private func makeTableHeaderView() -> UIView {
        let width: CGFloat = UIScreen.main.bounds.width - (UIScreen.main.bounds.width * 0.15)
        let height: CGFloat = 112
        let frame = CGRect(x: 0, y: 0, width: width, height: height)
        return UserView(frame: frame)
    }
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.reusableCell(MenuOptionCell.self, for: indexPath)
        let menuOption = MenuOption(rawValue: indexPath.row)
        cell.descriptionLabel.text = menuOption?.description
        cell.iconImageView.image = menuOption?.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuOption = MenuOption(rawValue: indexPath.row)
        delegete?.handleMenuToggle(forMenuOption: menuOption)
    }
}
