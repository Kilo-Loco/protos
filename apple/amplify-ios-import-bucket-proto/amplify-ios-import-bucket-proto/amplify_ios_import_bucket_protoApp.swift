//
//  amplify_ios_import_bucket_protoApp.swift
//  amplify-ios-import-bucket-proto
//
//  Created by Kilo Loco on 1/28/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct amplify_ios_import_bucket_protoApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            try Amplify.configure()
            print("Amplify configured with storage plugin")
        } catch {
            print("Failed to initialize Amplify with \(error)")
        }
    }
    
}
