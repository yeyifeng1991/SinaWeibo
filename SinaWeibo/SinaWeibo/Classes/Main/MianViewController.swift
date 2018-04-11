//
//  MianViewController.swift
//  SinaWeibo
//
//  Created by YeYiFeng on 2018/4/11.
//  Copyright © 2018年 叶子. All rights reserved.
//

import UIKit

class MianViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
       addChildMyVC(childVc: HomeViewController(), title: "首页", selctImage: "诊断")
        addChildMyVC(childVc: MessageViewController(), title: "消息", selctImage: "用药")
        addChildMyVC(childVc: DiscoverViewController(), title: "发现", selctImage:"giveHistory")
        addChildMyVC(childVc: ProfileViewController(), title: "我", selctImage: "mt_mine")

    }
//  方法重载：方法相同，但是参数不同
  private  func addChildMyVC(childVc : UIViewController,title : String,selctImage : String)  {
        
   
    // 2.设置属性
    childVc.title = title
    childVc.tabBarItem.image = UIImage(named: selctImage)
//    childVc.tabBarItem.selectedImage = UIImage(named: "his_add2")
    // 3. 包装导航控制器
    let childNav = UINavigationController(rootViewController: childVc)
    
    addChildViewController(childNav)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
}


