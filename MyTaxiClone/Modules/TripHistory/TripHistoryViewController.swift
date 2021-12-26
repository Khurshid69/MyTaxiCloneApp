//
//  TripHistoryViewController.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryViewController: BaseViewController {
    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(TripHistoryCell.self)
        view.separatorColor = .white
        view.showsVerticalScrollIndicator = false
        view.rowHeight = 134
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private var tripItems: Array<TripHistory> = [
        TripHistory.buildSample(),
        TripHistory.buildSample(),
        TripHistory.buildSample()
    ]
    private(set) var dwgConst = DrawingConstants()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
        setupCustomBackButton(withTitle: "Мои поездки")
    }
    
    private func makeSectionView(withTitle title: String) -> UIView {
        let dateLabel = UILabel()
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.text = title
        dateLabel.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 60))
        view.backgroundColor = .white
        view.addSubview(dateLabel)
        
        NSLayoutConstraint.activate([
            dateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            dateLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
        
        return view
    }
}

extension TripHistoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tripItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.reusableCell(TripHistoryCell.self, for: indexPath)
        cell.configure(with: tripItems[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        makeSectionView(withTitle: "6 Июля, Вторник")
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 45
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = TripDetailVC()
        navigationController?.pushViewController(vc, animated: true)
    }
}
