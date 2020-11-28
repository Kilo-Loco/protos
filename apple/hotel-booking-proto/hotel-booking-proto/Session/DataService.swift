//
//  DataService.swift
//  hotel-booking-proto
//
//  Created by Kilo Loco on 11/4/20.
//

import Amplify
import Combine
import UIKit

class DataService: ObservableObject {
    
    @Published var hotels = [Hotel]()
    
    private var tokens = Set<AnyCancellable>()
    
    func createHotel(name: String, description: String, price: Int, image: UIImage) {
        guard let imageData = image.jpegData(compressionQuality: 0.5) else { return }
        let imageKey = UUID().uuidString + ".jpg"
        
        let hotel = Hotel(
            name: name,
            description: description,
            price: price,
            imageKey: imageKey
        )
        
        let uploadTask = Amplify.Storage.uploadData(key: imageKey, data: imageData)
            .resultPublisher
            .mapError { ServiceError.storageError($0) }
            .eraseToAnyPublisher()
        
        let saveTask = Amplify.DataStore.save(hotel)
            .mapError { ServiceError.dataStoreError($0) }
            .eraseToAnyPublisher()
        
        uploadTask.combineLatest(saveTask)
            .sink { (completion) in
                print(completion)
            } receiveValue: { (uploadedKey, createdHotel) in
                print("image saved with key", uploadedKey)
                print("created hotel:", createdHotel)
            }
            .store(in: &tokens)
    }
    
    func getHotels() {
        Amplify.DataStore.query(Hotel.self)
            .receive(on: DispatchQueue.main)
            .sink { (completion) in
                print(completion)
            } receiveValue: { (hotels) in
                self.hotels = hotels
            }
            .store(in: &tokens)
    }
}

extension DataService {
    enum ServiceError: Error {
        case storageError(_ error: Error)
        case dataStoreError(_ error: Error)
    }
}
