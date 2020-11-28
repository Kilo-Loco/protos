//
//  twitter_clone_protoApp.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/18/20.
//

import SwiftUI

@main
struct twitter_clone_protoApp: App {
    
    @StateObject private var authService = AuthService()
    
    var body: some Scene {
        WindowGroup {
            switch authService.flowState {
            case .session(_):
                SessionCoordinatorView()
                    .accentColor(.purple)
                    .environmentObject(authService)
                    
            default:
                AuthView()
                    .accentColor(.purple)
                    .environmentObject(authService)
            }
        }
    }
}
