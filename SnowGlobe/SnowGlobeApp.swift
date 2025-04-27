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
                .environment(globeViewModel)
        }
        
        WindowGroup(id: "Globe") {
            GlobeView()
                .environment(globeViewModel)
        }
        .windowStyle(.volumetric)
    }
}
