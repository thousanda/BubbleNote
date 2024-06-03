//
//  ContentView.swift
//  BubbleNote
//
//  Created by 千田航己 on 2024/06/03.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Clipped text in a circle")
            .frame(width: 175, height: 100)
            .foregroundStyle(Color.white)
            .background(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 25.0))
    }
}

#Preview {
    ContentView()
}
