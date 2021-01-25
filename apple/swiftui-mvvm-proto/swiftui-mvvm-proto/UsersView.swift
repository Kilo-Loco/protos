//
//  UsersView.swift
//  swiftui-mvvm-proto
//
//  Created by Kilo Loco on 12/22/20.
//

import SwiftUI

struct User: Identifiable {
    let id: Int
    let name: String
}

extension User {
    static let dummy = User(id: 0, name: "Dummy User")
}

protocol DataService {
    func getUsers(completion: @escaping ([User]) -> Void)
}

class AppDataService: DataService {
    func getUsers(completion: @escaping ([User]) -> Void) {
        completion([
            User(id: 1, name: "Kyle"),
            User(id: 2, name: "Jamal"),
            User(id: 3, name: "Lee")
        ])
    }
}

struct UsersView: View {
    
    @StateObject var viewModel: ViewModel
    
    init(viewModel: ViewModel = .init()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }
    
    var body: some View {
        List(viewModel.users) { user in
            Text(user.name)
                .onTapGesture {
                    viewModel.selectedUser = user
                }
        }
        .onAppear(perform: viewModel.getUsers)
        .sheet(item: $viewModel.selectedUser) { user in 
            Text(user.name)
        }
    }
}

extension UsersView {
    class ViewModel: ObservableObject {
        @Published var users = [User]()
        @Published var selectedUser: User?
        
        let dataService: DataService
        
        init(dataService: DataService = AppDataService()) {
            self.dataService = dataService
        }
        
        func getUsers() {
            dataService.getUsers { [weak self] users in
                self?.users = users
            }
        }
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = UsersView.ViewModel()
        
        viewModel.users = [
            User(id: 1, name: "Kyle [Preview]"),
            User(id: 2, name: "Jamal [Preview]"),
            User(id: 3, name: "Lee [Preview]")
        ]
        
        
        return UsersView(viewModel: viewModel)
    }
}
