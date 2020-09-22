//
//  UserCell.swift
//  comine-migration-proto
//
//  Created by Kyle Lee on 8/30/20.
//

import Combine
import UIKit

protocol AnimalCellDelegate: AnyObject {
    func shouldShowEmoji(for animal: Animal)
}

class AnimalCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
//    weak var delegate: AnimalCellDelegate?
//    var shouldMakeNoiseForAnimal: ((Animal) -> Void)?
    
    var action = PassthroughSubject<AnimalCell.Action, Never>()
    
    private var animal: Animal!
    
    @IBAction func didTapShowEmojiButton() {
//        delegate?.shouldShowEmoji(for: animal)
        action.send(.showEmoji(animal))
    }
    
    @IBAction func didTapMakeNoiseButton() {
//        shouldMakeNoiseForAnimal?(animal)
        action.send(.makeNoise(animal))
    }
    
    func populate(with animal: Animal) {
        self.animal = animal
        nameLabel.text = animal.name
    }
}

extension AnimalCell {
    enum Action {
        case showEmoji(Animal)
        case makeNoise(Animal)
    }
}
