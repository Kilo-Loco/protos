//
//  amplify_datastore_storage_protoApp.swift
//  amplify-datastore-storage-proto
//
//  Created by Kyle Lee on 8/7/20.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct amplify_datastore_storage_protoApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            TabView {
                CameraView()
                    .tabItem { Image(systemName: "camera")}
                    
                GalleryView()
                    .tabItem { Image(systemName: "photo.on.rectangle") }
            }
            .accentColor(.purple)
        }
    }
    
    private func configureAmplify() {
        do {
            // DataStore
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: models))
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))

            // Storage
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.add(plugin: AWSCognitoAuthPlugin())

            try Amplify.configure()

        } catch {
            print(error)
        }
    }
}
