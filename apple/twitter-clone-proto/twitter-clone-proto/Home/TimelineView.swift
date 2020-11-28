//
//  TimelineView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import SwiftUI

struct TimelineView: View {
    @EnvironmentObject var navigationService: NavigationService
    @State var isComposeWuphfPresented = false
    @State var selectedWuphf: Any?
    
    let openMenu: () -> Void
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .bottomTrailing) {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(0 ..< 10) { index in
                            let wuphf = String(index)
                            
                            NavigationLink(
                                destination: WuphfDetailsView(wuphf: wuphf),
                                label: {
                                    VStack(spacing: 0) {
                                        WuphfView { action in
                                            print(action)
                                        }
                                        .padding(.horizontal, 16)
                                        
                                        Divider()
                                            .padding(.top, 4)
                                    }
                                    .padding(.vertical, 8)
                                }
                            )
                            .foregroundColor(Color(.label))
                        }
                    }
                }
                
                ActionButton(
                    action: { isComposeWuphfPresented.toggle() },
                    image: .newWuphf
                )
            }
            .navigationBarTitle("🐺", displayMode: .inline)
            .navigationBarItems(
                leading: Button(action: openMenu) {
                    Image(systemName: "line.horizontal.3")
                        .frame(width: 44, height: 44, alignment: .leading)
                }
            )
            .fullScreenCover(
                isPresented: $isComposeWuphfPresented,
                content: ComposeWuphfView.init
            )
        }
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView(openMenu: {})
    }
}
