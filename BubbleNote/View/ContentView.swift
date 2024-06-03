//
//  ContentView.swift
//  BubbleNote
//
//  Created by 千田航己 on 2024/06/03.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: NoteDetailView()) {
                    Text("Item1")
                }
                NavigationLink(destination: NoteDetailView()) {
                    Text("Item2")
                }
                NavigationLink(destination: NoteDetailView()) {
                    Text("Item3")
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "note.text")
                    }
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "gearshape.fill")
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
