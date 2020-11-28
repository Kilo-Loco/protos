//
//  ActionAndCountView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/24/20.
//

import SwiftUI

struct ActionAndCountView: View {
    
    let actionItem: ActionItem
    let action: () -> Void
    
    @ViewBuilder
    var body: some View {
        Button(action: action) {
            HStack(spacing: 4) {
                Image(systemName: actionItem.imageName)
                switch actionItem {
                case .comment(let count), .rewuphf(let count), .like(let count, _):
                    if count > 0 {
                        Text(String(count))
                    } else {
                        EmptyView()
                    }
                default:
                    EmptyView()
                }
            }
            .frame(maxWidth: 60, maxHeight: 44)
        }
        .foregroundColor(.gray)
    }
}

extension ActionAndCountView {
    enum ActionItem {
        case comment(Int)
        case rewuphf(Int)
        case like(Int, Bool)
        case share
        
        var imageName: String {
            switch self {
            case .comment:
                return "bubble.left"
            case .rewuphf:
                return "arrow.2.squarepath"
            case .like(_, let isLiked):
                return isLiked ? "heart.fill" : "heart"
            case .share:
                return "square.and.arrow.up"
            }
        }
    }
}

struct ActionAndCountView_Previews: PreviewProvider {
    static var previews: some View {
        ActionAndCountView(actionItem: .like(1, true), action: {})
    }
}
