//
//  ContentView.swift
//  ColourSelector
//
//  Created by Joyce Tao on 2022-10-27.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored Properties
    @State private var selectedHue = 0.0
    
    // tracks the list of saved palettes
    @State private var savedPalettes: [SavedPalette] = []
    
    // MARK: Computed Properties
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
    
    //Interface
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                VStack {}
                    .frame(width: 100, height: 100)
                    .background(baseColour)
                
                VStack(alignment: .leading) {
                    Text("Hue")
                        .bold()
                    
                    Text("\(selectedHue.formatted(.number.precision(.fractionLength(1))))°")
                    
                    Slider(
                        value: $selectedHue,
                        in: 0...360,
                        label: {
                            Text("Hue")
                        },
                        minimumValueLabel: {
                            Text("0")
                        },
                        maximumValueLabel: {
                            Text("360")
                        }
                    )
                }
                .padding(.leading)
            }
            
            VStack(alignment: .leading) {
                // title and colour patch with the base colour, and its two darker variations
                HStack {
                    Text("MONOCHROMATIC")
                        .bold()
                        .font(.caption.smallCaps())
                }
                
                MonochromaticPaletteView(selectedHue: selectedHue)
            }
            
            
            Button(action: {
                // Create a new palette instance
                let newPalette = SavedPalette(hue: hue)
                
                // Add it to the list
                savedPalettes.append(newPalette)
            }, label: {
                Text("Save")
            })
            
            // Show the saved palettes
            List(savedPalettes) { currentPalette in
                
                MonochromaticPaletteView(selectedHue: currentPalette.hue * 360)
                
            }
            
        }
        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
