//
//  FeaturedItemCardView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct FeaturedItemCardView: View {
    let farmItem: FarmItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Replace with real images or use placeholders
            Image(farmItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(8)
                .shadow(radius: 2)
            
            Text(farmItem.name)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            
            Text(String(format: "$%.2f", farmItem.price))
                .font(.subheadline)
                .foregroundColor(.green)
        }
        .padding()
        .frame(width: 150)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

struct FeaturedItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemCardView(farmItem: SampleData.featuredItems[0])
    }
}
