//
//  AmplifyImageDownloader.swift
//  remote-image-proto
//
//  Created by Kilo Loco on 1/30/21.
//

import Amplify
import Foundation

class AmplifyImageDownloader: ImageDownloader {
    let cacheKey: String
    
    init(imageKey: String) {
        self.cacheKey = imageKey
    }
    
    func downloadImage(completion: @escaping (Data?) -> Void) {
        <#code#>
    }
}
