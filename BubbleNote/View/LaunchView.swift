//
//  LaunchView.swift
//  BubbleNote
//
//  Created by 千田航己 on 2024/06/03.
//

import SwiftUI

struct LaunchView: View {
    @State private var isActive = false
    
    var body: some View {
        Group {
            if isActive {
                ContentView()
            } else {
                LaunchScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            withAnimation {
                                isActive = true
                            }
                        }
                    }
            }
        }
    }
}

private struct LaunchScreen: View {
    @State private var scale: CGFloat = 1.0
    @State private var textOpacity = 1.0
    @State private var imageOpacity = 1.0

    var body: some View {
        GeometryReader { geometry in
            let w = geometry.size.width / 4
            let h = geometry.size.height / 4
            let size = min(w, h)
            
            VStack {
                Image(systemName: "note.text")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scale)
                    .frame(width: size, height: size)
                    .opacity(imageOpacity)
                Text("🫧 Welcome to BubbleNote 🫧")
                    .opacity(textOpacity)
                    .padding(.top, 10)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                withAnimation(.easeInOut(duration: 1)) {
                    textOpacity = 0
                }
                withAnimation(.easeInOut(duration: 2)) {
                    scale = 4
                }
                withAnimation(.easeInOut(duration: 1).delay(1)) {
                    imageOpacity = 0
                }
            }
        }
    }
}

#Preview {
    LaunchScreen()
}
