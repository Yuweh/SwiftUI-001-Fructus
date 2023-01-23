//
//  FructusApp.swift
//  Fructus
//
//  Created by MYS on 1/15/23.
//

import SwiftUI

@main
struct FructusApp: App {
    // MARK: - PROPERTIES
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            if isOnBoarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
