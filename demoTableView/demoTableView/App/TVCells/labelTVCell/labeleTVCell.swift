//
//  labeleTVCell.swift
//  demoTableView
//
//  Created by iraiAnbu on 14/12/21.
//

import Foundation
import UIKit



class labelTVCell:UITableViewCell {
    
    var identifier = "labelTVCell"
        
    lazy var label = UILabel()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String? ) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(label)
        
        bringSubviewToFront(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false 
        
        addConstrainsForLabel()
        
    }
    

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

 
    override func awakeFromNib() {
        super.awakeFromNib()
        
       print("awake from nib")
        
        
    }
    
    
    
    func addConstrainsForLabel() {
        
        
        NSLayoutConstraint.activate([
        
            label.topAnchor.constraint(equalTo: contentView.topAnchor , constant: 10),
            label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor , constant: 10),
            label.trailingAnchor.constraint(equalTo: contentView.trailingAnchor , constant: -10),
            label.bottomAnchor.constraint(equalTo: contentView.bottomAnchor , constant: -10),
//            label.heightAnchor.constraint(equalToConstant: 50)
        
        
        ])
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
}


