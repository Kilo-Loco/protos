//
//  ContentView.swift
//  card-swipe-proto
//
//  Created by Kilo Loco on 4/1/22.
//

import SwiftUI

extension Color {
    static let random: Color = {
        Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }()
}

struct Card: Identifiable {
    var id: Int { color.hashValue }
    let color = Color.random
    var x = CGFloat.zero
    var y = CGFloat.zero
}

enum CardState: CGFloat {
    case leadingCommit = -500
    case leading = -100
    case trailing = 100
    case trailingCommit = 500
}

struct ContentView: View {
    
    var cards = (0..<10).map { _ in Card() }
    
    @State var currentCardCoordinates: (x: CGFloat, y: CGFloat) = (0, 0)
    
    var body: some View {
        ZStack {
            ForEach(cards) { card in
                if card.id == cards.first?.id {
                    card.color
                        .cornerRadius(25)
                        .padding()
                        .offset(x: currentCardCoordinates.x, y: currentCardCoordinates.y)
                        .gesture(
                            DragGesture()
                                .onChanged { value in
                                    withAnimation(.default) {
                                        currentCardCoordinates.x = value.translation.width
                                        currentCardCoordinates.y = value.translation.height
                                    }
                                }
                            
                                .onEnded { value in
                                    withAnimation(.interactiveSpring()) {
                                        switch value.translation.width {
                                        case let x where x < -100:
                                            currentCardCoordinates.x = -500
                                        case let x where x > 100:
                                            currentCardCoordinates.x = 500
                                        default:
                                            currentCardCoordinates = (0, 0)
                                        }
                                    }
                                }
                        )
                } else {
                    
                    card.color
                        .cornerRadius(25)
                        .padding()
                        .onAppear {
                            print(card.color.hashValue)
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
