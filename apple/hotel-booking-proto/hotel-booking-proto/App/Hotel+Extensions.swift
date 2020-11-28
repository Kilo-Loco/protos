//
//  Hotel+Extensions.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import Foundation

extension Hotel: Identifiable {}

extension Hotel: Subject {
    var notes: String {
        "$\(price)/night"
    }
}
