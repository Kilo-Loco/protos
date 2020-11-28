//
//  DateFormatterService.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import Foundation

class DateFormatterService {
    private let formatter = DateFormatter()
    static let shared = DateFormatterService()
    
    private init() {}
    
    func format(_ date: Date) -> String {
        let lastWeek = Calendar.current.date(byAdding: .day, value: -7, to: Date()) ?? Date()
        let dateFormat = date > lastWeek ? "EEEE, hh:mm a" : "MM/dd/yy, hh:mm a"
        formatter.dateFormat = dateFormat
        return formatter.string(from: date)
    }
    
}
