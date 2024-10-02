//
//  ContentView.swift
//  Project-3-challenge-view-modifiers
//
//  Created by Kevin Cuadros on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .titleCase()
        }
        .padding()
    }
}


struct TitleCase: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(.blue)
    }
}

extension View {
    public func titleCase() -> some View {
        modifier(TitleCase())
    }
}

#Preview {
    ContentView()
}
