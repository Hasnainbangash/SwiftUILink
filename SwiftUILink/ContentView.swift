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
        
    }
}

#Preview {
    ContentView()
}
