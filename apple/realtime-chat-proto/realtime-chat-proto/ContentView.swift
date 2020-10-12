//
//  ContentView.swift
//  realtime-chat-proto
//
//  Created by Kilo Loco on 10/12/20.
//

import Amplify
import SwiftUI

enum AmpError: Error {
    case someError
}

class SourceOfTruth: ObservableObject {
    @Published var messages = [Message]()
    
    var subscription: GraphQLSubscriptionOperation<Message>?
    
    func getMessages() {
        Amplify.API.query(request: .list(Message.self)) { [weak self] queryResult in
            switch queryResult {
            case .success(let messagesResult):
                
                switch messagesResult {
                case .success(let messages):
                    DispatchQueue.main.async {
                        self?.messages = messages
                    }
                    
                case .failure(let error):
                    print(error)
                }
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    func send(_ message: Message) {
        Amplify.API.mutate(request: .create(message)) { mutateResult in
            switch mutateResult {
            case .success(let sendResult):
                
                switch sendResult {
                case .success:
                    print("Send message")
                    
                case .failure(let error):
                    print("Couldnt send message", error)
                }
                
            case .failure(let mutateError):
                print("Could not mutate", mutateError)
            }
        }
    }
    
    func observeMessages() {
        subscription = Amplify.API.subscribe(
            request: .subscription(of: Message.self, type: .onCreate),
            
            valueListener: { [weak self] subscriptionEvent in
                switch subscriptionEvent {
                case .connection(let connectionState):
                    print(connectionState)
                    
                case .data(let result):
                    switch result {
                    case .success(let message):
                        DispatchQueue.main.async {
                            self?.messages.append(message)
                        }
                        
                    case .failure(let error):
                        print(error)
                    }
                }
            },
            
            completionListener: { completion in
                switch completion {
                case .success:
                    print("Subscription closed successfully")
                case .failure(let error):
                    print("Couldnt close sub", error)
                }
            }
        )
    }
}

struct ContentView: View {
    
    @ObservedObject private var sot = SourceOfTruth()
    private let currentUserName: String
    @State private var textFieldText = String()
    
    @State private var scrollViewProxy: ScrollViewProxy?
    
    init(currentUserName: String = "Jamal Lee") {
        self.currentUserName = currentUserName
        getMessages()
        observeMessages()
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(sot.messages) { message in
                        MessageRow(
                            message: message,
                            isFromCurrentUser: message.senderName == currentUserName
                        )
                    }
                }
            }
            
            HStack {
                TextField("Enter message", text: $textFieldText)
                Button("Send", action: sendMessage)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.purple)
            }
            .padding()
        }
    }
    
    func getMessages() {
        sot.getMessages()
    }
    
    func sendMessage() {
        let message = Message(senderName: currentUserName, body: textFieldText)
        sot.send(message)
        textFieldText.removeAll()
    }
    
    func observeMessages() {
        sot.observeMessages()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
