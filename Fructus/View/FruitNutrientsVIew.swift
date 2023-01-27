//
//  FruitNutrientsVIew.swift
//  Fructus
//
//  Created by MYS on 1/25/23.
//

import SwiftUI

struct FruitNutrientsVIew: View {
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    } //HStack
                } //ForEach
            } //DisclosureGroup
        } //GroupBox
        
        
        
    }
}

// MARK: - PREVIEW
struct FruitNutrientsVIew_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsVIew(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding( )
    }
}
