//
//  RemoteImage.swift
//  remote-image-proto
//
//  Created by Kilo Loco on 1/30/21.
//

import SwiftUI


protocol ImageDownloader {
    var cacheKey: String { get }
    func downloadImage(completion: @escaping (Data?) -> Void)
}

class DefaultImageDownloader: ImageDownloader {
    let cacheKey: String
    
    init(imagePath: String) {
        self.cacheKey = imagePath
    }
    
    func downloadImage(completion: @escaping (Data?) -> Void) {
        guard let url = URL(string: cacheKey) else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            completion(data)
        }
        task.resume()
    }
}

class RemoteImageCache: NSCache<NSString, UIImage> {
    
    static let shared = RemoteImageCache()
    
    func getImage(for key: String) -> UIImage? {
        self.object(forKey: key as NSString)
    }
    
    func cache(_ image: UIImage, for key: String) {
        self.setObject(image, forKey: key as NSString)
    }
}

struct RemoteImage: View {
    
    @State var uiImage: UIImage?
    
    private let placeholderImage: Image
    private let imageDownloader: ImageDownloader
    private let imageCache: RemoteImageCache
    
    init(
        placeholderImage: Image = Image(systemName: "photo"),
        imageDownloader: ImageDownloader,
        imageCache: RemoteImageCache = .shared
    ) {
        self.placeholderImage = placeholderImage
        self.imageDownloader = imageDownloader
        self.imageCache = imageCache
    }
    
    init(_ imagePath: String) {
        self.init(imageDownloader: DefaultImageDownloader(imagePath: imagePath))
    }
    
    var body: some View {
        if let uiImage = self.uiImage {
            Image(uiImage: uiImage)
                .resizable()
        } else {
            placeholderImage
                .resizable()
                .onAppear(perform: getImage)
        }
    }
    
    private func getImage() {
        let cacheKey = imageDownloader.cacheKey
        if let image = imageCache.getImage(for: cacheKey) {
            print("using cached image")
            uiImage = image
        } else {
            print("downloading image")
            imageDownloader.downloadImage { imageData in
                guard
                    let imageData = imageData,
                    let uiImage = UIImage(data: imageData)
                else {
                    print("bad image")
                    self.uiImage = nil
                    return
                }
                
                print("set image")
                imageCache.cache(uiImage, for: cacheKey)
                DispatchQueue.main.async {
                    self.uiImage = uiImage                    
                }
            }
        }
    }
}


