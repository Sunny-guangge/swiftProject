//
//  TimeLineWebView.swift
//  swiftProject
//
//  Created by sunny on 10/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

protocol TimeLineWebClickDelegate : NSObjectProtocol{
    func TimeLineClickWeb();
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
        
        
        
    }
    
    func setWeb(web:web) -> Void {
        imageView.image = UIImage.init(named: web.imageUrl!);
        titleLabel.text = web.title;
    }
    
    @objc func tapped() {
        self.delegate?.TimeLineClickWeb();
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
