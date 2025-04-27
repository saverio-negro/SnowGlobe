//
//  GlobeView.swift
//  SnowGlobe
//
//  Created by Saverio Negro on 27/04/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct GlobeView: View {
    
    @Environment(GlobeViewModel.self) private var globeViewModel
    
    func enableDisableEntities(entities: Entity...) {
        
        for entity in entities {
            switch entity.name {
            case "Snowman":
                entity.isEnabled = globeViewModel.isSnowmanVisible
            case "Tree":
                entity.isEnabled = globeViewModel.isTreeVisible
            case "Snow":
                entity.isEnabled = globeViewModel.isSnowVisible
            default:
                break
            }
        }
    }
    
    var body: some View {
        RealityView { content in
            
            if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                guard
                    let snowman = scene.findEntity(named: "Snowman"),
                    let tree = scene.findEntity(named: "Tree"),
                    let snow = scene.findEntity(named: "Snow")
                else {
                    fatalError("Failed to load entities.")
                }
                
                enableDisableEntities(entities: snowman, tree, snow)
                content.add(scene)
            }
        } update: { content in
            // Update the content
        }

    }
}
