//
//  ContentView.swift
//  SwiftUILink
//
//  Created by Elexoft on 07/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Simple link with the title and with te destination
        Link("Go to Apple", destination: URL(string: "https://apple.com")!).padding()
        
        // Customs links
        // Different links with different styles
        Link("Go to Apple", destination: URL(string: "https://apple.com")!)
            .buttonStyle(.borderless)
        
        Link("Call To Action", destination: URL(string: "tel:1234567890")!)
            .buttonStyle(.bordered)
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.regular)
        
        Link("Send an Email", destination: URL(string: "mailto:swiftui@apple.com")!)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .tint(.pink)
        
        Link("Credo Academy", destination: URL(string: "https://credo.academy")!)
            .buttonStyle(.plain)
            .padding()
            .border(.primary, width: 2)
            
            .padding()
        
        // Link View
        Link(destination: URL(string: "https://apple.com")!) {
            HStack(spacing: 16) {
                Image(systemName: "apple.logo")
                Text("Apple Store")
            }
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(
                Capsule()
                    .fill(Color.blue)
            )
        }
        
    }
}

#Preview {
    ContentView()
}
