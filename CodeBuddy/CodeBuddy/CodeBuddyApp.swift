//
//  CodeBuddyApp.swift
//  CodeBuddy
//
//  Created by furkan vural on 14.10.2023.
//

import SwiftUI

@main
struct CodeBuddyApp: App {
    
    @StateObject private var locationManager = LocationManager()

    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(locationManager)
                .environmentObject(Settings())
                .environmentObject(MapType())
                .frame(minWidth: 1280 ,minHeight: 720)
        }
    }
}
