//
//  UserDetailsView.swift
//  swiftui-mvvm-proto
//
//  Created by Kilo Loco on 12/22/20.
//

import SwiftUI

struct UserDetailsView: View {
    
    let user: User
    
    var body: some View {
        Text("You selected \(user.name). Their ID is \(user.id).")
    }
}

struct UserDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailsView(user: .dummy)
    }
}
