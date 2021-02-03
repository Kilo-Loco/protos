//
//  scheduled_lambda_ios_protoApp.swift
//  scheduled-lambda-ios-proto
//
//  Created by Kilo Loco on 2/1/21.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct scheduled_lambda_ios_protoApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func configureAmplify() {
//        let dataStorePlugin = AWSDataStorePlugin(modelRegistration: AmplifyModels())
        let apiPlugin = AWSAPIPlugin(modelRegistration: AmplifyModels())

        do {
//            try Amplify.add(plugin: dataStorePlugin)
            try Amplify.add(plugin: apiPlugin)
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }
}
