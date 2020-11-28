//
//  AuthCredentials.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import Foundation

protocol AuthCredentials {
    var username: String { get }
    var password: String { get }
}

struct SignUpCredentials: AuthCredentials {
    let username: String
    let email: String
    let password: String
}

struct LoginCredentials: AuthCredentials {
    let username: String
    let password: String
}
