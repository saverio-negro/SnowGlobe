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
            
            VStack(spacing: 50) {
                
                Button {
                    openWindow(id: "Globe")
                } label: {
                    Text("Conjure a Snow Globe")
                        .font(.title)
                        .padding()
                }
                
                Button {
                    dismissWindow(id: "Globe")
                } label: {
                    Text("Close Snow Globes")
                        .font(.title)
                        .padding()
                }
            }
        }
        .padding(50)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(GlobeViewModel())
}
