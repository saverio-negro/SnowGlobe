//
//  ContentView.swift
//  SnowGlobe
//
//  Created by Saverio Negro on 27/04/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openWindow) private var openWindow
    @Environment(\.dismissWindow) private var dismissWindow
    @EnvironmentObject private var globeViewModel: GlobeViewModel
    
    var body: some View {
        VStack {
            Toggle("Include Snowman", isOn: $globeViewModel.isSnowmanVisible)
            Toggle("Include Tree", isOn: $globeViewModel.isTreeVisible)
            Toggle("Include Snow", isOn: $globeViewModel.isSnowVisible)
            
            Spacer()
            
            Button("Conjure a Snow Globe") {
                openWindow(id: "Globe")
            }
            
            Button("Close Snow Globes") {
                dismissWindow(id: "Globe")
            }
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(GlobeViewModel())
}
