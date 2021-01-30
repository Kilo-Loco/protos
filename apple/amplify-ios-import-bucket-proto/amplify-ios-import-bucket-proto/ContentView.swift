//
//  ContentView.swift
//  amplify-ios-import-bucket-proto
//
//  Created by Kilo Loco on 1/28/21.
//

import Amplify
import SwiftUI

struct ContentView: View {
    
    @State var image: UIImage?
    
    var body: some View {
        VStack {
            if let image = image {
                Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Button("Get photo", action: getPhoto)
        }
    }
    
    func getPhoto() {
        let options = StorageListRequest.Options(accessLevel: .guest)
        
        Amplify.Storage.list(options: options) { listResult in
            do {
                let storageResult = try listResult.get()
                let firstImageKey = storageResult.items.first?.key ?? ""
                Amplify.Storage.downloadData(key: firstImageKey) { downloadResult in
                    do {
                        let imageData = try downloadResult.get()
                        let image = UIImage(data: imageData)
                        self.image = image
                        
                    } catch {
                        print(error)
                    }
                }
                
            } catch {
                print(error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
