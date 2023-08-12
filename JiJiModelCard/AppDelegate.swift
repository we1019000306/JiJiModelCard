//
//  AppDelegate.swift
//  JiJiModelCard
//
//  Created by 刘明远 on 2023/8/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var isFullScreen: Bool = false
    var jiugonggeViewController: UIViewController?

    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
      if let vc = jiugonggeViewController {
        return vc.supportedInterfaceOrientations
      } else{
          return .all
      }
    }
    
//    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
//
//        if isFullScreen {
//            if #available(iOS 16.0, *) {
//                // 16 及以上可以做到根据屏幕方向适配横屏
//                return .landscape
//            } else {
//                // 16 以下不方便做, 所以我们是强制 右横屏
//                return .landscapeRight
//            }
//        }
//
//        return .portrait
//    }
//
   
}

