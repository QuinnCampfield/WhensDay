//
//  UserListsViewModel.swift
//  WhensDay
//
//  Created by Quinn C on 3/17/24.
//

import Foundation


class UserListsViewModel: ObservableObject {
    @Published var lists: [UserList]
    
    init() {
        self.lists = []
        
        // temporary defaulting
        self.lists = [UserList(title: "Shopping", items: ["Milk", "Cereal", "Soda", "Chips", "Water", "Paper Towel"]),
                      UserList(title: "To-Do", items: ["Taxes", "Get Gas", "Oil change", "Clean Bike"])]
    }
}

class UserList: Identifiable {
    var title: String
    var items: [String]
    
    init(title: String, items: [String]) {
        self.title = title
        self.items = items
    }
}
