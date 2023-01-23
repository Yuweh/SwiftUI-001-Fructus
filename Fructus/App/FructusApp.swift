//
//  FructusApp.swift
//  Fructus
//
//  Created by MYS on 1/15/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    
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
