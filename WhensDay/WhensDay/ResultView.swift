//
//  ResultView.swift
//  WhensDay
//
//  Created by Quinn C on 3/17/24.
//

import SwiftUI

struct ResultView: View {
    var choice: String

    var body: some View {
        VStack {
            Text("You chose \(choice)")
        }
    }
}

