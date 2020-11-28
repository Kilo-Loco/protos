//
//  AuthCredentials.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import Foundation

protocol AuthCredentials {
    var handle: String { get }
    var password: String { get }
}

struct SignUpCredentials: AuthCredentials {
    let handle: String
    let displayName: String
    let email: String
    let password: String
}

struct LoginCredentials: AuthCredentials {
    let handle: String
    let password: String
}
