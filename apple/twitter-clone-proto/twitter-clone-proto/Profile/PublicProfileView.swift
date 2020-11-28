//
//  PublicProfileView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct PublicProfileView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var authService: AuthService
    
    @State private var selectedSegment = 0
    
    let user: String
    
    var isCurrentUsersProfile: Bool {
        user == authService.currentUser
    }
    
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
                            
                            
                            NavigationLink(
                                destination: EditProfileView(),
                                label: {
                                    Text("Edit profile")
                                        .padding(.horizontal)
                                        .padding(.vertical, 4)
                                        .foregroundColor(.white)
                                        .background(Color.accentColor)
                                        .clipShape(Capsule())
                                })
                            
                            
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
                        
                        Picker(selection: $selectedSegment, label: Text("What is your favorite color?")) {
                            Text("Wuphfs").tag(0)
                            Text("Media").tag(1)
                            Text("Likes").tag(2)
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }
                    .padding()
                    
                    ForEach(0 ..< 10) { index in
                        WuphfView { print($0) }
                    }
                    .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button(action: { presentationMode.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.left")
                }
                .frame(width: 44, height: 44, alignment: .leading)
            )
        }
        .accentColor(.purple)
    }
}

struct PublicProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PublicProfileView(user: "true")
    }
}
