//
//  ViewController.swift
//  editor
//
//  Created by Kilo Loco on 1/25/21.
//

import TwitterTextEditor
import UIKit

class MainView: UIView {
    
    private lazy var textEditor: TextEditorView = {
        let editor = TextEditorView()
        editor.translatesAutoresizingMaskIntoConstraints = false
        editor.placeholderText = "Enter a message..."
        editor.backgroundColor = .systemBackground
        return editor
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
        configureSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func configure() {
        backgroundColor = .secondarySystemBackground
    }
    
    private func configureSubviews() {
        addSubview(textEditor)
        
        let guide = layoutMarginsGuide
        NSLayoutConstraint.activate([
            textEditor.topAnchor.constraint(equalTo: guide.topAnchor),
            textEditor.leadingAnchor.constraint(equalTo: guide.leadingAnchor),
            textEditor.trailingAnchor.constraint(equalTo: guide.trailingAnchor),
            textEditor.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
    
    func bind(to delegate: TextEditorViewTextAttributesDelegate) {
        textEditor.textAttributesDelegate = delegate
    }
}

class ViewController: UIViewController {
    
    let mainView = MainView()

    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.bind(to: self)
    }
}

extension ViewController: TextEditorViewTextAttributesDelegate {
    func textEditorView(_ textEditorView: TextEditorView, updateAttributedString attributedString: NSAttributedString, completion: @escaping (NSAttributedString?) -> Void) {
        print(attributedString)
        completion(attributedString)
    }
}
