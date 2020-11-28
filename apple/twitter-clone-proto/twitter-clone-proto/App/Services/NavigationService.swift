//
//  NavigationService.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

class NavigationService: ObservableObject {
    @Published var destination: Destination?
    
    var destinationTag: String {
        destination?.tag ?? ""
    }
    
    var destinationView: some View {
        guard let view = destination?.view else { return AnyView(EmptyView()) }
        return AnyView(view)
    }
    
    func navigate(to destination: Destination) {
        self.destination = destination
    }
}

extension NavigationService {
    enum Destination {
        case profile(user: String)
        
        var tag: String {
            switch self {
            case .profile:
                return "profile"
            }
        }
        
        var view: some View {
            switch self {
            case .profile(let user):
                return PublicProfileView(user: user)
            }
        }
    }
}
