//
//  TripHistoryCell.swift
//  MyTaxiClone
//
//  Created by user on 21/12/21.
//

import UIKit

class TripHistoryCell: BaseTableViewCell {
    private(set) lazy var containerView: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 0.94, green: 0.94, blue: 0.94, alpha: 1.0).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var departureIcon: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Frame 621")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var departurePlace: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        view.font = UIFont.systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var arrivalIcon: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Frame 620")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var arrivalPlace: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        view.font = UIFont.systemFont(ofSize: 14)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var bottomFrame: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor(red: 0.973, green: 0.973, blue: 0.973, alpha: 1).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var timeLabel: UILabel = {
        let view = UILabel()
        view.textColor = UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1)
        view.font = UIFont(name: "Avenir Nexr", size: 13)
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private(set) lazy var carImageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Bitmap-2")
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
        
    func configure(with history: TripHistory) {
        departurePlace.text = history.departure
        arrivalPlace.text = history.arrival
        timeLabel.text = history.time
        carImageView.image = UIImage(named: history.carName)
    }
    
    private func setup() {
        selectionStyle = .none
        setupSubviews()
    }
}
