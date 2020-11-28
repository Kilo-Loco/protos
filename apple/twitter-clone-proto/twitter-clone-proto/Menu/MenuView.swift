//
//  MenuView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/24/20.
//

import SwiftUI

struct MenuView: View {
    
    let menuWidth: CGFloat
    
    var body: some View {
        HStack {
            
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                
                
                VStack(alignment: .leading) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Display Name")
                        .font(.title2)
                        .bold()
                    
                    Text("@handle")
                        .font(.title3)
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 16) {
                        Text("437").fontWeight(.semibold)
                            + Text(" Following").foregroundColor(.gray)
                        
                        
                        Text("7,087").fontWeight(.semibold)
                            + Text(" Followers").foregroundColor(.gray)
                    }
                    .padding(.vertical, 8)
                    
                    HStack(spacing: 16) {
                        Image(systemName: "person")
                            .resizable()
                            .frame(width: 25, height: 25)
                        
                        Text("Profile")
                            .font(.title3)
                    }
                    .padding(.vertical)
                    
                    Divider()
                    
                    Text("Log out")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.red)
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.leading, 24)
            }
            .frame(width: menuWidth)
            
            Spacer()
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(menuWidth: 300)
    }
}
