//
//  StartButtonView.swift
//  Fructus
//
//  Created by MYS on 1/16/23.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - PROPERTIES
    @AppStorage("isOnBoarding") var isOnBoarding: Bool?
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            print("Exit the onboarding")
            isOnBoarding = false
        } label: {
            HStack(spacing: 9) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
            } //HStack
            .imageScale(.large)
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(Color.white, lineWidth: 1.25)
                )
        } //Button
        .accentColor(Color.white)
        
    } //View
}

// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
    }
}
