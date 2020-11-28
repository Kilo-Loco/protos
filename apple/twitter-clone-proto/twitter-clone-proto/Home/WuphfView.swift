//
//  WuphfView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/23/20.
//

import AVKit
import SwiftUI

struct WuphfView: View {
    
    var imageName: String? {
        guard Bool.random() else { return nil }
        return "macbook-\(Int.random(in: 1 ... 12))"
    }
    
    let performAction: (Action) -> Void
    
    var body: some View {
        VStack{
            HStack(alignment: .top) {
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(maxWidth: 50, maxHeight: 50)
                    .onTapGesture {
                        print("profile")
                    }
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Display Name")
                            .fontWeight(.semibold)
                        
                        Text("@handle")
                            .foregroundColor(.gray)
                        
                        Spacer()
                    }
                    .onTapGesture {
                        print("profile")
                    }
                    
                    Text("Swift Developers only want one thing and it's fuckin disgusting. Then theres this other thing to show too! My baby just came and sat next to me and i love it. Better cover her little foot.".prefix(.random(in: 20 ..< 200)))
                        .fixedSize(horizontal: false, vertical: true)
                        .padding(.vertical, 1)
                    
                    if let imageKey = imageName {
                        Image(uiImage: UIImage(contentsOfFile: Bundle.main.path(forResource: imageKey, ofType: "JPG")!)!)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 200)
                            .clipped()
                            .cornerRadius(10)
                    }
                    
                    HStack {
                        ActionAndCountView(actionItem: .comment(Int.random(in: 0 ..< 100)), action: { performAction(.comment) })
                        Spacer()
                        ActionAndCountView(actionItem: .rewuphf(Int.random(in: 0 ..< 100)), action: { performAction(.rewuphf) })
                        Spacer()
                        ActionAndCountView(actionItem: .like(Int.random(in: 0 ..< 100), false), action: { performAction(.like) })
                        Spacer()
                        ActionAndCountView(actionItem: .share, action: { performAction(.share) })
                        Spacer()
                    }
                }
            }
        }
    }
}

extension WuphfView {
    enum Action {
        case comment, rewuphf, like, share
    }
}

struct WuphfView_Previews: PreviewProvider {
    static var previews: some View {
        WuphfView(performAction: {_ in})
    }
}
