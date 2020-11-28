//
//  MessagesView.swift
//  twitter-clone-proto
//
//  Created by Kilo Loco on 11/25/20.
//

import SwiftUI

struct MessagesView: View {
    
    @State var messageText = String()
    @State var messageIsEditing = false
    
    var body: some View {
        VStack {
            
            ScrollView {
                LazyVStack {
                    ForEach(0 ..< 20) { index in
                        RowView(text: "what if the text is really long like this and needs to wrap? Index \(index)", isCurrentUser: Bool.random(), date: Date())
                    }
                }
            }
            .rotationEffect(Angle(degrees: 180))
            
            ZStack {
                Color(.systemBackground)
                    .frame(height: 70)
                
                HStack {
                    TextField(
                        "Start a message",
                        text: $messageText,
                        onEditingChanged: { messageIsEditing = $0 }
                    )
                    .padding(.vertical, 8)
                    .padding(.horizontal)
                    .background(Color(.secondarySystemBackground))
                    .clipShape(Capsule())
                    
                    Button(action: {}) {
                        Image(systemName: "arrow.up.circle.fill")
                            .font(.title)
                            .frame(width: 44, height: 44)
                    }
                }
                .padding(.horizontal)
                
            }
        }
        .navigationBarTitle("Kilo Loco", displayMode: .inline)
        
    }
}



struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

extension MessagesView {
    struct RowView: View {
        
        let text: String
        let isCurrentUser: Bool
        let date: Date
        
        private var cornersToRound: [RoundableShape.Corner] {
            let radius: CGFloat = 16
            let bottomCornerToRound: RoundableShape.Corner = isCurrentUser
                ? .bottomLeft(radius)
                : .bottomRight(radius)
            return [.topLeft(radius), .topRight(radius), bottomCornerToRound]
        }
        
        private var formattedDate: String {
            DateFormatterService.shared.format(date)
        }
        
        private var bubbleColor: Color {
            isCurrentUser ? .accentColor : .init(.secondarySystemBackground)
        }
        
        private var textColor: Color {
            isCurrentUser ? .white : .init(.label)
        }
        
        var body: some View {
            VStack {
                HStack(alignment: .top) {
                    
                    if isCurrentUser {
                        Spacer()
                    } else {
                        Image(systemName: "person.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding(.top)
                    }
                    
                    VStack(alignment: isCurrentUser ? .trailing : .leading) {
                        
                        Text(text)
                            .padding()
                            .foregroundColor(textColor)
                            .background(bubbleColor)
                            .clipShape(RoundableShape(cornersToRound))
                        
                        Text(formattedDate)
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    
                    if !isCurrentUser {
                        Spacer()
                    }
                }
            }
            .rotationEffect(Angle(degrees: 180))
            .padding(.horizontal)
        }
    }
}
