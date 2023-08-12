//
//  JiugonggeViewController.swift
//  JiJiModelCard
//
//  Created by 刘明远 on 2023/8/11.
//

import UIKit

class JiugonggeViewController: UIViewController {
    var isFullScreen = 1
    var images: [UIImage] = []
    @IBOutlet weak var imgView1: UIImageView!
    @IBOutlet weak var imgView2: UIImageView!
    @IBOutlet weak var imgView3: UIImageView!
    @IBOutlet weak var imgView4: UIImageView!
    @IBOutlet weak var imgView5: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(white: 1, alpha: 1)
        self.tabBarController?.tabBar.isHidden = true
        imgView1.image = self.images[0]
        imgView2.image = self.images[1]
        imgView3.image = self.images[2]
        imgView4.image = self.images[3]
        imgView5.image = self.images[4]
        if #available(iOS 16.0, *) {
                   self.setNeedsUpdateOfSupportedInterfaceOrientations()
        }
        lockOrientation()
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        resumeOrientation()
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    
    func lockOrientation() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.jiugonggeViewController = self
    }
    
    func  resumeOrientation() {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.jiugonggeViewController = nil
    }
    
}
