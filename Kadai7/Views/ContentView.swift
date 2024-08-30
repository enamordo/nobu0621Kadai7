//
//  ContentView.swift
//  Kadai7
//
//  Created by nobu0621 on 2024/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTag = 1
    
    var body: some View {
        TabView(selection: $selectedTag, content: {
            AdditionView().tabItem { Text("item 1")}.tag(1)
            SubtractionView().tabItem { Text("item 2")}.tag(2)
        })
    }
}

extension TextField {
    func roundedTextFieldStyle() -> some View {
        return self
            .textFieldStyle(.roundedBorder)
            .frame(width: 100)
            .keyboardType(.numberPad)
    }
}

#Preview {
    ContentView()
}
