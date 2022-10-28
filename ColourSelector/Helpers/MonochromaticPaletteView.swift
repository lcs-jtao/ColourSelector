//
//  MonochromaticPaletteView.swift
//  ColourSelector
//
//  Created by Joyce Tao on 2022-10-27.
//

import SwiftUI

struct MonochromaticPaletteView: View {
    
    // The selected hue (passed from the parent)
    // We need this information passed in
    var selectedHue: Double
    
    // The selected hue expressed as a value between 0 and 1.0
    private var hue: Double {
        return selectedHue / 360.0
    }
    
    // Make the colour that SwiftUI will use to set the background of the colour swatch
    private var baseColour: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.9)
    }
    
    private var darkerColourOne: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.6)
    }
    
    private var darkerColourTwo: Color {
        return Color(hue: hue,
                     saturation: 0.8,
                     brightness: 0.3)
    }
    
    var body: some View {
        
        HStack (spacing: 0) {
            
            Rectangle()
                .foregroundColor(baseColour)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .foregroundColor(darkerColourOne)
                .frame(width: 50, height: 50)
            
            Rectangle()
                .foregroundColor(darkerColourTwo)
                .frame(width: 50, height: 50)
            
            Spacer()
            
        }
    }
}

struct MonochromaticPaletteView_Previews: PreviewProvider {
    static var previews: some View {
        MonochromaticPaletteView(selectedHue: 0.0)
    }
}
