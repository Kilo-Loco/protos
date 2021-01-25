//
//  ContentView.swift
//  existing-bucket-proto
//
//  Created by Kilo Loco on 1/18/21.
//

import Amplify
import Combine
import SwiftUI

struct AsyncImage: View {
    
    @StateObject var viewModel = ViewModel()
    
    let imageKey: String
    
    var body: some View {
        if let uiImage = viewModel.image {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
        } else {
            Image(systemName: "photo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onAppear {
                    viewModel.loadImage(for: imageKey)
                }
        }
    }
}

extension AsyncImage {
    class ViewModel: ObservableObject {
        
        @Published var image: UIImage?
        
        private var token: AnyCancellable?
        
        func loadImage(for imageKey: String) {
            print("loading", imageKey)
            token = Amplify.Storage.downloadData(key: imageKey)
                .resultPublisher
                .receive(on: DispatchQueue.main)
                .sink { completion in
                    print(completion)
                } receiveValue: { [weak self] imageData in
                    print(Thread.current.isMainThread)
                    print(imageData)
                    let image = UIImage(data: imageData)
                    self?.image = image
                }
            
        }
    }
}

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.imageKeys, id: \.self) { imageKey in
                    AsyncImage(imageKey: imageKey)
                }
            }
        }
    }
}

extension String {
    var isNotEmpty: Bool { !isEmpty }
}

extension ContentView {
    class ViewModel: ObservableObject {
        
        @Published var imageKeys = [String]()
        
        init() {
            listFiles()
        }
        
        func listFiles() {
            let options = StorageListRequest.Options(accessLevel: .guest)
            Amplify.Storage.list(options: options) { [weak self] result in
                do {
                    let files = try result.get().items
                    print("FILE COUNT", files.count)
                    DispatchQueue.main.async {
                        self?.imageKeys = files.map(\.key).filter(\.isNotEmpty)
                    }
                    
                } catch {
                    print(error)
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
