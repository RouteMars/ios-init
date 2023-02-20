//
//  TestAppApp.swift
//  TestApp
//
//  Created by admin on 2023/02/17.
//

import SwiftUI

@main
struct TestApp: App {
    
    @Environment(\.scenePhase) private var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.onChange(of: scenePhase) { phase in
            switch phase {
            case .active:
                print("active State")
            case .background:
                print("backgound State")
            case .inactive:
                print("Inactive State")
            default:
                print("Default State")
            }
        }
    }
}
