//
//  SavedPalette.swift
//  ColourSelector
//
//  Created by Joyce Tao on 2022-10-27.
//

import Foundation

struct SavedPalette: Identifiable {
    let id = UUID() // Universally unique identifier
    let hue: Double
}

// For driving SwiftUI previews
let examplePalettes = [

    SavedPalette(hue: 0.1)
    ,
    SavedPalette(hue: 0.2)
    ,
    SavedPalette(hue: 0.3)

]
