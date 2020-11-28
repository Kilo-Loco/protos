//
//  InboxView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import SwiftUI

struct InboxView: View {
    
    let openMenu: () -> Void
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ..< 20) { _ in
                            RowView()
                                .padding(.vertical, 8)
                                .padding(.horizontal)
                                
                            Divider()
                        }
                    }
                }
                
                ActionButton(action: {}, image: .composeMessage)
                
            }
            .navigationBarTitle("Messages", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: openMenu) {
                    Image(systemName: "line.horizontal.3")
                        .frame(width: 44, height: 44, alignment: .leading)
                }
            )
        }
    }
}

extension InboxView {
    struct RowView: View {
        var body: some View {
            VStack {
                
                HStack(alignment: .top) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Display Name")
                                .bold()
                            
                            Text("@handle")
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Text("1h")
                                .foregroundColor(.gray)
                        }
                        
                        Text("This is the last message that was sent in this chat channel")
                            .lineLimit(2)
                    }
                }
            }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView(openMenu: {})
    }
}
