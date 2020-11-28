//
//  ComposeWuphfView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import SwiftUI

struct ComposeWuphfView: View {
    
    @State private var text = String()
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .top) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                    
                    ZStack(alignment: .topLeading) {
                        TextEditor(text: $text)
                        
                        if text.isEmpty {
                            Text("What's happening?")
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 8, leading: 4, bottom: 0, trailing: 0))
                        }
                        
                    }
                    .font(.body)
                }
                .padding()
                
                Divider()
                
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
                    
                    CharacterCountRing(characterCount: text.count)
                        .padding(.horizontal)
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: Button("Cancel", action: {}))
            .navigationBarItems(trailing: Button(action: {}) {
                Text("Wuphf")
                    .padding(.vertical, 4)
                    .padding(.horizontal)
                    .foregroundColor(.white)
                    .background(Color.purple)
                    .clipShape(Capsule())
            })
        }
    }
}

struct ComposeWuphfView_Previews: PreviewProvider {
    static var previews: some View {
        ComposeWuphfView()
    }
}
