//
//  ViewA.swift
//  WhensDay
//
//  Created by Quinn C on 3/17/24.
//

import SwiftUI

struct ViewA: View {
    var body: some View {
        ZStack {
            Color.blue
            Image(systemName: "calendar")
                .foregroundColor(.white)
                .font(.system(size: 100))
        }
    }
}

#Preview {
    ViewA()
}
