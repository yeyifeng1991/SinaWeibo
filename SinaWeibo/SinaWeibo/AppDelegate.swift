//
//  AppDelegate.swift
//  SinaWeibo
//
//  Created by 叶子 on 2018/4/10.
//  Copyright © 2018年 叶子. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
// 设置全局颜色
        UITabBar.appearance().tintColor = UIColor.orange
        //1.创建window
        window = UIWindow(frame:UIScreen.main.bounds)
        window?.backgroundColor = UIColor.white
        window?.rootViewController = MianViewController();
        window?.makeKeyAndVisible()
        return true
    }

  


}

