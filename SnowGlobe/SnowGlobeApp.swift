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
                .frame(minWidth: 100, maxWidth: 200,
                       minHeight: 100, maxHeight: 200
                )
                .environment(globeViewModel)
        }
        .windowStyle(.plain)
        
        WindowGroup(id: "Globe") {
            GlobeView()
                .environment(globeViewModel)
        }
        .windowStyle(.volumetric)
    }
}
