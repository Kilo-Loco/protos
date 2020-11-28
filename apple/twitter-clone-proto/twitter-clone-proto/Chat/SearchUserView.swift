//
//  SearchUserView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct SearchUserView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State private var searchText = String()
    
    let onSelectedUser: (String) -> Void
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Enter a username", text: $searchText)
                    .keyboardType(.twitter)
            }
            .padding()
            .background(Color(.secondarySystemBackground))
            
            ScrollView {
                LazyVStack {
                    ForEach(0 ..< 20) { index in
                        let user = String(index)
                        VStack {
                            Row()
                                .foregroundColor(Color(.label))
                                .padding(.horizontal)
                            
                            
                            Divider()
                        }
                        .onTapGesture {
                            presentationMode.wrappedValue.dismiss()
                            onSelectedUser(user)
                        }
                    }
                }
                .padding(.vertical)
            }
        }
    }
}

extension SearchUserView {
    struct Row: View {
        var body: some View {
            HStack {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                VStack(alignment: .leading) {
                    Text("Display Name")
                    
                    Text("@handle")
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
        }
    }
}

struct SearchUserView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserView(onSelectedUser: {_ in})
    }
}
