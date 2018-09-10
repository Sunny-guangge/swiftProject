//
//  BaseTabBarController.swift
//  swiftProject
//
//  Created by sunny on 5/9/18.
//  Copyright © 2018年 sunny. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = HomeViewController();
        let uina1 = UINavigationController(rootViewController:homeVC);
        uina1.tabBarItem.title = "首页";
        uina1.tabBarItem.image = UIImage.init(named: "tabbar1");
        uina1.tabBarItem.selectedImage = UIImage.init(named: "tabbar1")
        
        let mineVC = MineViewController();
        let uina2 = UINavigationController(rootViewController:mineVC);
        uina2.tabBarItem.title = "我的";
        uina2.tabBarItem.image = UIImage.init(named: "tabbar2");
        uina2.tabBarItem.selectedImage = UIImage.init(named: "tabbar2")
        
        tabBar.tintColor = UIColor.red;
        self.viewControllers = [uina1,uina2];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
