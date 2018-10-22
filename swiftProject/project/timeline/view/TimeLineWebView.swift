//
//  TimeLineWebView.swift
//  swiftProject
//
//  Created by sunny on 10/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

@objc protocol TimeLineWebClickDelegate : NSObjectProtocol{
    @objc optional func TimeLineClickWeb(web:web);
}

class TimeLineWebView: UIView {
    
    lazy var imageView:UIImageView = {
        let imageView = UIImageView();
        return imageView;
    }()
    
    lazy var titleLabel:UILabel = {
        let titleLabel = UILabel();
        titleLabel.font = UIFont.systemFont(ofSize: 12);
        titleLabel.textColor = UIColor.black;
        titleLabel.textAlignment = .left;
        titleLabel.numberOfLines = 2;
        return titleLabel;
    }()
    
    lazy var button:UIButton = {
        let button = UIButton();
        button.addTarget(self, action: #selector(tapped), for: .touchUpInside)
        return button;
    }()
    
    var delegate : TimeLineWebClickDelegate?;
    
    var web:web?;
    
    
    override init(frame: CGRect) {
        super.init(frame: frame);
        
        self.backgroundColor = UIColor.gray;
        
        self.addSubview(imageView);
        self.addSubview(titleLabel);
        self.addSubview(button);
    }
    
    override func layoutSubviews() {
        super.layoutSubviews();
        
        button.frame = self.bounds;
        imageView.top =  10;
        imageView.left = 10;
        imageView.height = self.height - 20;
        imageView.width = imageView.height;
        
        titleLabel.top = 10;
        titleLabel.left = imageView.width + 20;
        titleLabel.height = self.height - 20;
        titleLabel.width = self.width - 30 - imageView.width;
    }
    
    func setWeb(web:web) -> Void {
        self.web = web;
        imageView.image = UIImage.init(named: web.imageUrl!);
        titleLabel.text = web.title;
    }
    
    @objc func tapped() {
        self.delegate?.TimeLineClickWeb!(web:self.web!);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
