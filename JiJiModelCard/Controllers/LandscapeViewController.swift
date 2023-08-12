//
//  LandscapeViewController.swift
//  JiJiModelCard
//
//  Created by 刘明远 on 2023/8/12.
//

import UIKit

class LandscapeViewController: UIViewController {
    var isLandscapeRequired = false
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return isLandscapeRequired ? .landscape : .all
    }
    override func viewDidLoad() {
         super.viewDidLoad()
         // 这里可以添加你的视图控制器的其他初始化代码
     }
}
