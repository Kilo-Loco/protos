//
//  SessionView.swift
//  product-marketplace-proto
//
//  Created by Kilo Loco on 5/31/22.
//

import SwiftUI

struct SessionView: View {
    var body: some View {
        TabView {
            HomeView().tabItem {
                Label("Home", systemImage: "house")
            }
            ChatView().tabItem {
                Label("Chat", systemImage: "message")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "person")
            }
        }
    }
}

struct SessionView_Previews: PreviewProvider {
    static var previews: some View {
        SessionView()
    }
}
