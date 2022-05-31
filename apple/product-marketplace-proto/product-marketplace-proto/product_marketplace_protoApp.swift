//
//  product_marketplace_protoApp.swift
//  product-marketplace-proto
//
//  Created by Kilo Loco on 5/27/22.
//

import Amplify
import AWSDataStorePlugin
import SwiftUI

@main
struct product_marketplace_protoApp: App {
    
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
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: models))
            try Amplify.configure()
            print("Amplify configured")
        } catch {
            print(error)
        }
    }
}
