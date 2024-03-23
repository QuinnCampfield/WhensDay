//
//  ContentView.swift
//  WhensDay
//
//  Created by Quinn C on 3/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                Group {
                    ViewA()
                        .tabItem {
                            Image(systemName: "calendar")
                            Text("WhensDay")
                        }
                    UserListsView()
                        .tabItem {
                            Image(systemName: "list.bullet")
                            Text("Lists")
                        }
                }
                .toolbarBackground(Color(hue: 1.0, saturation: 0.0, brightness: 0.21), for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarColorScheme(.dark, for: .tabBar)
            }
        }
    }
}

#Preview {
    ContentView()
}
