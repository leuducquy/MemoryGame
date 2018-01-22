//
//  UIImage+Downloader.swift
//  MemoryGame
//
//  Created by Daniel Tsirulnikov on 17/04/16.
//  Copyright © 2016 Daniel Tsirulnikov. All rights reserved.
//
//  Based on a method from:
//  https://github.com/PerrchicK/swift-app/blob/master/SomeApp/SomeApp/Classes/Utilities/PerrFuncs.swift
//

import UIKit.UIImage

extension UIImage {
    static func downloadImage(url: NSURL, completion: ((UIImage?) -> Void)?) {
        
        DispatchQueue.global(qos: .userInitiated).async {
            let data = try! Data(contentsOf: url as URL)
            // Bounce back to the main thread to update the UI
            DispatchQueue.main.async {
               let  image = UIImage(data: data)
                 completion?(image)
            }
        }
        
        }
    }

