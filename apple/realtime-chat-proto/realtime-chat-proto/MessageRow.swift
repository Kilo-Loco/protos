//
//  MessageRow.swift
//  realtime-chat-proto
//
//  Created by Kilo Loco on 10/12/20.
//

import SwiftUI

struct MessageRow: View {
    
    let message: Message
    let isFromCurrentUser: Bool
    
    var iconName: String {
        let name = message.senderName.first
            .flatMap({ String($0).lowercased() })
            ?? "questionmark"
        print(name)
        return name
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                
                Image(systemName: "\(iconName).circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(isFromCurrentUser ? .blue : .green)
                
                VStack(alignment: .leading) {
                    Text(message.senderName)
                        .font(.headline)
                    Text(message.body)
                        .font(.body)
                }
            }
            .padding(.horizontal, 16)
            Divider().padding(.leading, 16)
        }
    }
}

