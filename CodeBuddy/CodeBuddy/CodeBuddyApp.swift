//
//  CodeBuddyApp.swift
//  CodeBuddy
//
//  Created by furkan vural on 14.10.2023.
//

import SwiftUI

@main
struct CodeBuddyApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(Settings())
                .frame(minWidth: 1280 ,minHeight: 720)
        }
    }
}
