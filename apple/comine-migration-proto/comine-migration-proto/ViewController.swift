//
//  ViewController.swift
//  comine-migration-proto
//
//  Created by Kyle Lee on 8/30/20.
//

import Combine
import UIKit

class AnimalsViewController: UITableViewController {

    var animals = [Animal]()
    
    var getAnimalsToken: AnyCancellable?
    
    var tokensByIndexPath = [IndexPath: AnyCancellable]()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getAnimals()
    }
    
    func getAnimals() {
//        NetworkingService.getAnimals { [weak self] (result) in
//            switch result {
//            case .success(let animals):
//                self?.animals = animals
//                self?.tableView.reloadData()
//
//            case .failure(let error):
//                print(error)
//            }
//        }
        
        getAnimalsToken = NetworkingService.getAnimals()
            .sink(
                receiveCompletion: { completion in
                    switch completion {
                    case .finished:
                        print("Subscription finished")
                        
                    case .failure(let error):
                        print(error)
                    }
                },
                receiveValue: { [weak self] animals in
                    self?.animals = animals
                    self?.tableView.reloadData()
                }
            )
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animals.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        
        let animalCell = cell as? AnimalCell
        let animal = animals[indexPath.row]
//        animalCell?.delegate = self
//        animalCell?.shouldMakeNoiseForAnimal = { [weak self] animal in
//            self?.makeNoise(for: animal)
//        }
        
        tokensByIndexPath[indexPath] = animalCell?.action
            .sink { [weak self] action in
                switch action {
                case .makeNoise(let animal):
                    self?.makeNoise(for: animal)
                    
                case .showEmoji(let animal):
                    self?.showEmoji(for: animal)
                }
            }
        
        
        
        animalCell?.populate(with: animal)
        
        
        return cell
    }
    
    func showEmoji(for animal: Animal) {
        AlertService.showAlert(with: animal.emoji, in: self)
    }
    
    func makeNoise(for animal: Animal) {
        AlertService.showAlert(with: animal.noise, in: self)
    }
}

extension AnimalsViewController: AnimalCellDelegate {
    func shouldShowEmoji(for animal: Animal) {
        showEmoji(for: animal)
    }
}
