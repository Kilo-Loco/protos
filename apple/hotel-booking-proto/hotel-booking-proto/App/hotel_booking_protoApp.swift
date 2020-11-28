//
//  hotel_booking_protoApp.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/3/20.
//

import Amplify
import AmplifyPlugins
import SwiftUI

@main
struct hotel_booking_protoApp: App {
    
    init() {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            CoordinatorView()
        }
    }
    
    private func configureAmplify() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.add(plugin: AWSS3StoragePlugin())
            
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            try Amplify.add(plugin: AWSDataStorePlugin(modelRegistration: models))
            
            try Amplify.configure()
            print("Configured amplify successfully")
            
        } catch {
            print("Could not init amplify")
        }
    }
}
