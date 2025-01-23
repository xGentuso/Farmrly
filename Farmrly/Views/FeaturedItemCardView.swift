//
//  FeaturedItemCardView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct FeaturedItemCardView: View {
    let itemName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Placeholder image - replace with real
            Image(systemName: "photo")
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .frame(maxWidth: .infinity)
                .foregroundColor(.gray)
            
            Text(itemName)
                .font(.body)
                .fontWeight(.semibold)
            
            Text("$X.XX")
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
