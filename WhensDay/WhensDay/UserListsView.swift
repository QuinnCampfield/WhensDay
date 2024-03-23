//
//  ViewB.swift
//  WhensDay
//
//  Created by Quinn C on 3/17/24.
//

import SwiftUI

struct UserListsView: View {
    @ObservedObject var viewModel = UserListsViewModel()
    var body: some View {
        ZStack {
            Color.gray
            NavigationStack {
                        ScrollView {
                            ForEach($viewModel.lists) {list in
                                NavigationLink(destination: ResultView(choice: "Tails")) {
                                    UserListItemView(list: list)
                                        .foregroundStyle(.black)
                                        .padding()
                                }
                            }
                        }
                        .navigationTitle("Your Lists")
                        .toolbar {
                            NavigationLink(destination: ResultView(choice: "Tails")) {
                                Text("New List")
                            }
                        }
                    }
        }
    }
}

#Preview {
    UserListsView()
}
