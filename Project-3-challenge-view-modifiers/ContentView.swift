//
//  ContentView.swift
//  Project-3-challenge-view-modifiers
//
//  Created by Kevin Cuadros on 2/10/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var agreedToTerms = false
    @State private var agreedToPrivacyPolicy = false
    @State private var agreedToEmails = false
    
    var body: some View {
        
        let agreedToAll = Binding<Bool>(
                    get: {
                        agreedToTerms && agreedToPrivacyPolicy && agreedToEmails
                    },
                    set: {
                        agreedToTerms = $0
                        agreedToPrivacyPolicy = $0
                        agreedToEmails = $0
                    }
                )
        
        return VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .titleCase()
            
            
            Toggle("Agree to terms", isOn: $agreedToTerms)
            Toggle("Agree to privacy policy", isOn: $agreedToPrivacyPolicy)
            Toggle("Agree to receive shipping emails", isOn: $agreedToEmails)
            Toggle("Agree to all", isOn: agreedToAll)
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
