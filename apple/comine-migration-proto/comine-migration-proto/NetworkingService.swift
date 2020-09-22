//
//  NetworkingService.swift
//  comine-migration-proto
//
//  Created by Kyle Lee on 8/30/20.
//

import Combine
import Foundation

enum NetworkingService {
    static func getAnimals(completion: @escaping (Result<[Animal], Error>) -> Void) {
        let animals: [Animal] = [.dog, .cat, .frog, .panda, .lion]
        completion(.success(animals))
    }
    
    static func getAnimals() -> Future<[Animal], Error> {
        return Future { promise in
            let animals: [Animal] = [.dog, .cat, .frog, .panda, .lion]
            promise(.success(animals))
        }
    }
}
