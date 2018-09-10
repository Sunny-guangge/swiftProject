//
//  HomeViewController.swift
//  swiftProject
//
//  Created by sunny on 5/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var dataArray:[String] = ["朋友圈"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "首页";
        view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    lazy var tableView : UITableView! = {
        let tableView = UITableView.init(frame: self.view.bounds, style: .plain);
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.register(HomeTableViewCell.classForCoder(), forCellReuseIdentifier: "HomeTableViewCell");
        tableView.tableFooterView = UIView();
        return tableView;
    }()
}

extension HomeViewController : UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60;
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let timeLineVC = WSGTimeLineViewController();
            timeLineVC.hidesBottomBarWhenPushed = true;
            self.navigationController?.pushViewController(timeLineVC, animated: true);
        }
    }
}

extension HomeViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : HomeTableViewCell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell") as! HomeTableViewCell;
        cell.textLabel?.text = dataArray[indexPath.row];
        return cell;
    }
    
}
