//
//  TimeLineTableViewCell.swift
//  swiftProject
//
//  Created by sunny on 5/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

class TimeLineTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    lazy var avatarImageView:UIImageView? = {
        let avatarImageView = UIImageView();
        avatarImageView.contentMode = .scaleToFill;
        return avatarImageView;
    }()
    
    lazy var nameLabel:UILabel = {
        let nameLabel = UILabel();
        nameLabel.textColor = UIColor.black;
        nameLabel.font = UIFont.systemFont(ofSize: 14);
        nameLabel.textAlignment = .left;
        return nameLabel;
    }()
    
    lazy var titleLabel:UILabel = {
        let titleLabel = UILabel();
        titleLabel.textColor = UIColor.black;
        titleLabel.font = UIFont.systemFont(ofSize: 16);
        return titleLabel;
    }()
    
    lazy var webView:TimeLineWebView = {
        let webView = TimeLineWebView();
        webView.delegate = self as TimeLineWebClickDelegate;
        return webView;
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension TimeLineTableViewCell : TimeLineWebClickDelegate{
    func TimeLineClickWeb() {
        
    }
}
