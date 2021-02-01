//
//  ContentView.swift
//  remote-image-proto
//
//  Created by Kilo Loco on 1/30/21.
//

import SwiftUI

struct Post: Identifiable {
    let id = UUID().uuidString
    let imageKey = "https://import-bucket-proto.s3-us-west-2.amazonaws.com/public/amplify-logo.png"
}

struct ContentView: View {
    
    @State var posts = [Post()]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    ForEach(posts) { post in
                        RemoteImage(post.imageKey)
                            .frame(width: 250, height: 250)
                    }
                }
            }
            
            Button("Get more images", action: getMoreImages)
        }
            
    }
    
    func getMoreImages() {
        posts = [Post(), Post(), Post(), Post(), Post()]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
