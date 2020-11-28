//
//  CharacterCountRing.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import SwiftUI

struct CharacterCountRing: View {
    
    private let maxCharacterCount = 280
    let characterCount: Int
    
    private var progress: CGFloat {
        let fraction = Double(characterCount) / Double(maxCharacterCount)
        return CGFloat(min(fraction, 1))
    }
    
    private var remainingCharacters: Int {
        maxCharacterCount - characterCount
    }
    
    private var ringColor: Color {
        if remainingCharacters <= 0 {
            return .red
        } else if remainingCharacters <= 20 {
            return .yellow
        } else {
            return .accentColor
        }
    }
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 2)
                .foregroundColor(Color(white: 0.85))
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                .foregroundColor(ringColor)
                .rotationEffect(Angle(degrees: 270))
                .animation(.linear)
            
            if remainingCharacters <= 20 {
                Text(String(remainingCharacters))
                    .foregroundColor(Color(remainingCharacters <= 0 ? .red : .label))
                    .font(.footnote)
            }
        }
        .frame(width: 25, height: 25)
    }
}

struct CharacterCountRing_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCountRing(characterCount: 200)
    }
}
