//
//  GitHubParser.swift
//  contributions-widget-proto
//
//  Created by Kilo Loco on 1/27/21.
//

import Combine
import Foundation
import SwiftSoup

enum GitHubParser {
    
    
    static func getDevelopmentDays(for username: String, completion: @escaping ([Contribution]) -> Void) {
        do {
            let url = URL(string: "https://github.com/\(username)")!
            let html = try String(contentsOf: url)
            let doc = try SwiftSoup.parse(html)
            let dayElements = try doc.getElementsByClass("day")
            let contributions = dayElements.compactMap { day -> Contribution? in
                guard
                    let dateString = try? day.attr("data-date"),
                    let date = DateService.shared.dateFormatter.date(from: dateString),
                    let dataCountString = try? day.attr("data-count"),
                    let dataCount = Int(dataCountString)
                else { return nil }
                
                return Contribution(date: date, dataCount: dataCount)
            }
            
            let thisSaturday = Calendar.current.nextDate(
                after: Date(),
                matching: DateComponents(weekday: 7),
                matchingPolicy: .nextTime
            )!
            
            let last17Weeks = Calendar.current.date(
                byAdding: .weekOfMonth,
                value: -17,
                to: thisSaturday
            )!
            
            let latestContributions = contributions
                .filter { $0.date > last17Weeks }
            
            completion(latestContributions)
            
        } catch {
            print(error)
        }
    }
    
    static func getDevelopmentDays(for username: String) -> AnyPublisher<[Contribution], Error> {
        do {
            let url = URL(string: "https://github.com/\(username)")!
            let html = try String(contentsOf: url)
            let doc = try SwiftSoup.parse(html)
            let dayElements = try doc.getElementsByClass("day")
            let contributions = dayElements.compactMap { day -> Contribution? in
                guard
                    let dateString = try? day.attr("data-date"),
                    let date = DateService.shared.dateFormatter.date(from: dateString),
                    let dataCountString = try? day.attr("data-count"),
                    let dataCount = Int(dataCountString)
                else { return nil }
                
                return Contribution(date: date, dataCount: dataCount)
            }
            
            let thisSaturday = Calendar.current.nextDate(
                after: Date(),
                matching: DateComponents(weekday: 7),
                matchingPolicy: .nextTime
            )!
            
            let last17Weeks = Calendar.current.date(
                byAdding: .weekOfMonth,
                value: -17,
                to: thisSaturday
            )!
            
            let latestContributions = contributions
                .filter { $0.date > last17Weeks }
            
            return Just(latestContributions)
                .setFailureType(to: Error.self)
                .eraseToAnyPublisher()
            
        } catch {
            print(error)
            return Fail(error: error).eraseToAnyPublisher()
        }
    }
}
