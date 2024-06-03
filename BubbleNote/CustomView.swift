//
//  CustomView.swift
//  BubbleNote
//
//  Created by 千田航己 on 2024/06/03.
//

import SwiftUI

struct CustomView: View {
    let color: Color
    let text: String
    
    var body: some View {
        Text(text).background(color)
    }
}

#Preview {
    CustomView(color: Color.gray, text: "Hello")
}
