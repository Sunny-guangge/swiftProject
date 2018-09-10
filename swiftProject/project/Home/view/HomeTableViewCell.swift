//
//  HomeTableViewCell.swift
//  swiftProject
//
//  Created by sunny on 5/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        
        self.selectionStyle = .none;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
