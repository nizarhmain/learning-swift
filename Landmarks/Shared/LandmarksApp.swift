//
//  LandmarksApp.swift
//  Shared
//
//  Created by Nizar Hmain on 28/04/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)

        }
    }
}
