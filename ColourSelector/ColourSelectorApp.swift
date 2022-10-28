//
//  ColourSelectorApp.swift
//  ColourSelector
//
//  Created by Joyce Tao on 2022-10-27.
//

import SwiftUI

@main
struct ColourSelectorApp: App {
    
    // MARK: Stored Properties
    
    // Our list of saved palettes
    // "Source of Truth"
    @State private var savedPalettes: [SavedPalette] = []
    
    // MARK: Computed Properties
    
    // Windows / screens that make up our app
    var body: some Scene {
        WindowGroup {
            TabView {
                
                ContentView(savedPalettes: $savedPalettes)
                    .tabItem {
                        Image(systemName: "swatchpalette")
                        Text("Browse")
                    }
                
                SavedPalettesView(savedPalettes: $savedPalettes)
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Review")
                    }
            }
        }
    }
}
