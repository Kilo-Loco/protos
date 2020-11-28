//
//  PublicProfileView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct PublicProfileView: View {
    
    @State private var favoriteColor = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    VStack(alignment: .leading) {
                        HStack(alignment: .bottom) {
                            Image(systemName: "person.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .clipShape(Circle())
                            
                            Spacer()
                            
                            Button("Edit profile", action: {})
                                .padding(.horizontal)
                                .padding(.vertical, 4)
                                .foregroundColor(.white)
                                .background(Color.accentColor)
                                .clipShape(Capsule())
                        }
                        
                        Text("Display Name")
                            .font(.title2)
                            .bold()
                        
                        Text("@handle")
                            .foregroundColor(.gray)
                        
                        Text("This is my bio and i willl include some basic information about myself here")
                            .padding(.vertical, 4)
                        
                        HStack {
                            Text("440")
                                .fontWeight(.semibold)
                                + Text(" Following")
                                .foregroundColor(.gray)
                            
                            Text("7200")
                                .fontWeight(.semibold)
                                + Text(" Followers")
                                .foregroundColor(.gray)
                        }
                        .font(.callout)
                        
                        Picker(selection: $favoriteColor, label: Text("What is your favorite color?")) {
                            Text("Wuphfs").tag(0)
                            Text("Media").tag(1)
                            Text("Likes").tag(2)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .padding()
                    
                    ForEach(0 ..< 10) { index in
                        WuphfView()
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct PublicProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PublicProfileView()
    }
}
