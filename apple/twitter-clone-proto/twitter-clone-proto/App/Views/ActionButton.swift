//
//  ActionButton.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/27/20.
//

import SwiftUI

struct ActionButton: View {
    
    let action: () -> Void
    let image: ActionImage
    
    var body: some View {
        Button(action: action) {
            Image(systemName: image.rawValue)
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(Color.accentColor)
                .clipShape(Circle())
                .padding()
        }
    }
}

extension ActionButton {
    enum ActionImage: String {
        case newWuphf = "plus"
        case composeMessage = "square.and.pencil"
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(action: {}, image: .newWuphf)
    }
}
