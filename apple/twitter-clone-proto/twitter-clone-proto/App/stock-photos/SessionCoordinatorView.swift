//
//  SessionCoordinatorView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct SessionCoordinatorView: View {
    
    @State private var isMenuOpen = false
    
    var body: some View {
        ZStack {
            
            TabView {
                TimelineView(openMenu: { toggleMenu(open: true) })
                    .tabItem { Image(systemName: "house") }
                    
                NotificationsView(openMenu: { toggleMenu(open: true) })
                    .tabItem { Image(systemName: "bell") }
                
                InboxView(openMenu: { toggleMenu(open: true) })
                    .tabItem { Image(systemName: "envelope") }
            }
            .offset(x: isMenuOpen ? k.menuWidth : 0)
            
            if isMenuOpen {
                HStack {
                    Spacer()
                        .frame(maxWidth: k.menuWidth)
                    
                    Color(.systemBackground)
                        .opacity(0.5)
                        .ignoresSafeArea()
                        .onTapGesture { toggleMenu(open: false) }
                }
            }
            
            MenuView(menuWidth: k.menuWidth)
                .offset(x: isMenuOpen ? 0 : -k.menuWidth)
        }
    }
    
    private func toggleMenu(open: Bool) {
        withAnimation {
            isMenuOpen = open
        }
    }
}

extension SessionCoordinatorView {
    private struct k {
        static let menuWidth: CGFloat = 300
    }
}

struct SessionCoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        SessionCoordinatorView()
    }
}
