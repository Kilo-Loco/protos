//
//  Message+Extensions.swift
//  realtime-chat-proto
//
//  Created by Kilo Loco on 10/12/20.
//

import Foundation

extension Message: Equatable {
    public static func ==(lhs: Message, rhs: Message) -> Bool {
        lhs.id == rhs.id && lhs.senderName == rhs.senderName && lhs.body == rhs.body
    }
}

extension Message: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id + senderName + body)
    }
}

extension Message: Identifiable {}
