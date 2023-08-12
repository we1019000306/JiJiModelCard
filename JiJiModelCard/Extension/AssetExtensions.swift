//
//  AssetExtensions.swift
//  JiJiModelCard
//
//  Created by 刘明远 on 2023/8/11.
//

import PhotosUI

extension PHAsset {
    func getPHImage() -> UIImage? {
       let manager = PHImageManager.default()
       let option = PHImageRequestOptions()
       var thumbnail = UIImage()
       option.isSynchronous = true
       manager.requestImage(for: self, targetSize: CGSize(width: 200, height: 200), contentMode: .aspectFit, options: option) { image, info in
         thumbnail = image ?? UIImage()
       }
       return thumbnail
     }
}
