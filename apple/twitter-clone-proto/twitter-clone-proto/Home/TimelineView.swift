//
//  TimelineView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

struct TimelineView: View {
    
    let openMenu: () -> Void
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0 ..< 10) { _ in
                            VStack(spacing: 0) {
                                WuphfView()
                                    .padding(.horizontal, 16)
                                    .onTapGesture {
                                        print("show details")
                                    }
                                
                                Divider()
                                    .padding(.top, 4)
                            }
                            .padding(.vertical, 8)
                        }
                    }
                }
                
                ActionButton(action: {}, image: .newWuphf)
                    
            }
            .navigationBarTitle("🐺", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: openMenu) {
                    Image(systemName: "line.horizontal.3")
                        .frame(width: 44, height: 44, alignment: .leading)
                }
            )
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(openMenu: {})
    }
}
