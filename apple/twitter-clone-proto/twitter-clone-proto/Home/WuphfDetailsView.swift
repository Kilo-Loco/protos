//
//  WuphfDetailsView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/24/20.
//

import SwiftUI

struct WuphfDetailsView: View {
    
    @State var commentText = String()
    @State var commentIsEditing = false
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    LazyVStack {
                        OriginalWuphfView()
                            .padding(.horizontal, 16)
                        
                        Divider()
                        
                        ForEach(0 ..< 10) { _ in
                            WuphfView()
                        }
                        .padding(.horizontal, 16)
                    }
                    .padding(.vertical)
                }
                
                VStack(spacing: 0) {
                    Spacer()
                    Divider()
                    ZStack {
                        Color(.systemBackground)
                            .frame(height: commentIsEditing ? 100 : 70)
                        
                        VStack {
                            TextField(
                                "Wophf your reply",
                                text: $commentText,
                                onEditingChanged: { commentIsEditing = $0 }
                            )
                            .padding(.vertical, 8)
                            .padding(.horizontal)
                            .background(Color(.secondarySystemBackground))
                            .clipShape(Capsule())
                            
                            if commentIsEditing {
                                HStack {
                                    Button(action: {}) {
                                        Image(systemName: "photo")
                                    }
                                    .frame(width: 44, height: 44)
                                    
                                    Button(action: {}) {
                                        Image(systemName: "camera")
                                    }
                                    .frame(width: 44, height: 44)
                                    
                                    Spacer()
                                    
                                    CharacterCountRing(characterCount: commentText.count)
                                        .padding(.horizontal)
                                    
                                    Button(action: {}) {
                                        Text("Reply")
                                            .fontWeight(.semibold)
                                    }
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 8)
                                    .foregroundColor(.white)
                                    .background(Color.accentColor)
                                    .clipShape(Capsule())
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
            }
            .navigationBarTitle("Wuphf", displayMode: .inline)
        }
    }
}

extension WuphfDetailsView {
    struct OriginalWuphfView: View {
        
        var body: some View {
            VStack(alignment: .leading) {
                
                HStack {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    VStack(alignment: .leading) {
                        Text("Display Name")
                            .font(.headline)
                            .bold()
                        
                        Text("@handle")
                            .foregroundColor(.gray)
                    }
                }
                
                Text("Swift developers only want one thing and it's fuckin disgusting. I guess thats what happens when callback hell exists")
                    .font(.title2)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.vertical)
                
                Text("\("12:45 PM") · \("11/23/20")")
                    .foregroundColor(.gray)
                
                Divider()
                
                HStack {
                    Text("1")
                        .bold()
                        + Text(" Quote Wolph")
                        .foregroundColor(.gray)
                    
                    Text("3")
                        .bold()
                        + Text(" Likes")
                        .foregroundColor(.gray)
                }
                
                
                Divider()
                
                HStack {
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "bubble.left")
                            .font(.title2)
                            .frame(width: 44, height: 44)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "arrow.2.squarepath")
                            .font(.title2)
                            .frame(width: 44, height: 44)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .font(.title2)
                            .frame(width: 44, height: 44)
                    }
                    
                    Spacer()
                    
                    Button(action: {}) {
                        Image(systemName: "square.and.arrow.up")
                            .font(.title2)
                            .frame(width: 44, height: 44)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.gray)
            }
        }
    }
    
}

struct WuphfDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WuphfDetailsView()
    }
}
