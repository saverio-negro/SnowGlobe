//
//  SnowGlobeApp.swift
//  SnowGlobe
//
//  Created by Saverio Negro on 27/04/25.
//

import SwiftUI

@main
struct SnowGlobeApp: App {
    
    @State var globeViewModel = GlobeViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(minWidth: 250, maxWidth: 500,
                       minHeight: 250, maxHeight: 500
                )
                .glassBackgroundEffect()
                .environment(globeViewModel)
        }
        .windowResizability(.contentSize)
        
        WindowGroup(id: "Globe") {
            GlobeView()
                .environment(globeViewModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(width: 0.55, height: 0.55, depth: 0.55, in: .meters)
    }
}
