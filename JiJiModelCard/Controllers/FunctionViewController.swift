//
//  FunctionViewController.swift
//  JiJiModelCard
//
//  Created by 刘明远 on 2023/8/11.
//

import UIKit
import PhotosUI

class FunctionViewController: UIViewController, PHPickerViewControllerDelegate, UINavigationControllerDelegate {
    @IBAction func pickPhoto(_ sender: UIButton) {
        var configuration = PHPickerConfiguration()
        configuration.selectionLimit = 0 // 选择多个照片
        let picker = PHPickerViewController(configuration: configuration)
        picker.delegate = self
        present(picker, animated: true, completion: nil)
    }
    
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        dismiss(animated: true, completion: nil)
        
        var selectedImages: [UIImage] = []
        
        let group = DispatchGroup()
        
        for result in results {
            group.enter()
            
            if result.itemProvider.canLoadObject(ofClass: UIImage.self) {
                result.itemProvider.loadObject(ofClass: UIImage.self) { (image, error) in
                    if let image = image as? UIImage {
                        selectedImages.append(image)
                    }
                    group.leave()
                }
            } else {
                group.leave()
            }
        }
        
        group.notify(queue: .main) {
            self.performSegue(withIdentifier: "JiugonggeViewController", sender: selectedImages)

        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "JiugonggeViewController",
           let nextViewController = segue.destination as? JiugonggeViewController,
           let selectedImages = sender as? [UIImage] {
            nextViewController.images = selectedImages
//            nextViewController.isLandscapeRequired = true
        }
    }
//    
//    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
//          return .all // 或者根据你的默认设置
//      }
//    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
