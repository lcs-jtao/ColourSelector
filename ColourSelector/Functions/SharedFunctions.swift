//
//  SharedFunctions.swift
//  ColourSelector
//
//  Created by Joyce Tao on 2022-10-28.
//

import Foundation

// Return a list of palettes that have been filtered by the hue selected using the slider (+/- 10°)
func filtered(by hue: Double, from list: [SavedPalette]) -> [SavedPalette] {
    
    // Build the range of hues +/- 10°
    let hueRange = (hue - 10.0 / 360.0)...(hue + 10.0 / 360.0)
    
    // Normally we would use the "filter" method available to collection types in Swift
    // To satisfy AP Create Task requirements, we'll implement a linear search which is more easily explained in the written responses
    
    // Create an empty list
    var filteredResults: [SavedPalette] = []
    
    // Iterate over the saved palettes and find those close to the selected hue (inside the range)
    for palette in list {
        
        // Look for a palette in the desired range
        if hueRange.contains(palette.hue) {
            filteredResults.append(palette)
        }
    }
    
    // Return the list of filtered results
    return filteredResults
}
