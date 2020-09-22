//
//  CameraView.swift
//  amplify-datastore-storage-proto
//
//  Created by Kyle Lee on 8/8/20.
//

import Amplify
import SwiftUI

struct CameraView: View {
    
    @State var pickerImage: UIImage?
    
    @State var shouldShowCamera = false
    
    var body: some View {
        VStack {
            if let image = pickerImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            }
            Spacer()
            Button(action: didTapButton, label: {
                let imageName = pickerImage == nil
                    ? "camera"
                    : "icloud.and.arrow.up"
                
                Image(systemName: imageName)
                    .font(.largeTitle)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    
            })
            Spacer()
        }
        .sheet(isPresented: $shouldShowCamera, content: {
            ImagePicker(image: $pickerImage)
        })
    }
    
    func didTapButton() {
        if let image = pickerImage {
            let key = UUID().uuidString + ".jpg"
            upload(image, key: key)
            
        } else {
            shouldShowCamera.toggle()
        }
    }
    
    private func upload(_ image: UIImage, key: String) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        
        _ = Amplify.Storage.uploadData(key: key, data: imageData) { result in
            switch result {
            case .success:
                print("Uploaded to storage")
                let post = Post(imageKey: key)
                save(post)
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private func save(_ post: Post) {
        Amplify.DataStore.save(post) { result in
            switch result {
            case .success:
                print("Saved post")
                pickerImage = nil
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
