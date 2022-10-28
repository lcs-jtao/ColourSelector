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