//
//  WSGTimeLineViewController.swift
//  swiftProject
//
//  Created by sunny on 5/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

class WSGTimeLineViewController: UIViewController {

    lazy var tableView : UITableView? = {
        let tableView = UITableView.init(frame: self.view.bounds);
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.tableFooterView = UIView();
        tableView.register(TimeLineTableViewCell.classForCoder(), forCellReuseIdentifier: "TimeLineTableViewCell");
        return tableView;
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension WSGTimeLineViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60;
    }
}

extension WSGTimeLineViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TimeLineTableViewCell") as! TimeLineTableViewCell;
        return cell;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0;
    }
}
