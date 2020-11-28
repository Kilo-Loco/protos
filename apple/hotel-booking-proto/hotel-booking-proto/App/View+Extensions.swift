//
//  View+Extensions.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/6/20.
//

import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
