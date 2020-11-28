//
//  NotificationsView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import SwiftUI

struct NotificationsView: View {
    
    let openMenu: () -> Void
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ..< 20) { _ in
                            VStack {
                                RowView()
                                    .padding(.vertical)
                                    .padding(.horizontal, 40)
                                Divider()
                            }
                        }
                    }
                }
                
                ActionButton(action: {}, image: .newWuphf)
            }
            .navigationBarTitle("Notifications", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: openMenu) {
                    Image(systemName: "line.horizontal.3")
                        .frame(width: 44, height: 44)
                        .offset(x: -16)
                }
            )
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView(openMenu: {})
    }
}

extension NotificationsView {
    struct RowView: View {
        var body: some View {
            HStack(alignment: .top) {
                Image(systemName: "heart.fill")
                    .font(.title2)
                    .foregroundColor(.red)
                
                VStack(alignment: .leading) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                    
                    Text("Kilo Loco")
                        .fontWeight(.semibold)
                        + Text(" liked your Wuphf")
                    
                    Text("This is the original content of the Wuphf that was liked or Rewuphfed by some other user on the app.")
                        .foregroundColor(.gray)
                }
            }
        }
    }
}
