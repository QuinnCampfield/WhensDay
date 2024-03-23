//
//  UserListItemView.swift
//  WhensDay
//
//  Created by Quinn C on 3/17/24.
//

import SwiftUI

struct UserListItemView: View {
    @Binding var list: UserList
    var body: some View {
        VStack {
            Text(list.title)
                .fontWeight(.heavy)
                .padding(.top)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(list.items, id: \.self) { item in
                        Text(item)
                            .padding(.vertical, 5)
                            .padding(.horizontal, 15)
                            .background(RoundedRectangle(cornerRadius: 15.0).fill(Color.yellow))
                    }
                }
                .padding(.horizontal)
            }
        }
        .frame(minHeight: 100, maxHeight: .infinity)
        .frame(maxWidth: .infinity)
        .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.87))
        .overlay(
            RoundedRectangle(cornerRadius: 3.0)
                .stroke(.blue, lineWidth: 5)
        )
    }
}

//#Preview {
//    UserListItemView(list: UserList(title: "List", items: ["item1", "item2"]))
//}
