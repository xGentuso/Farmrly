//
//  CategoryCardView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct CategoryCardView: View {
    let categoryName: String
    
    var body: some View {
        VStack(spacing: 10) {
            // SF Symbol as placeholder icon
            Image(systemName: "leaf.circle")
                .resizable()
                .scaledToFit()
                .foregroundColor(.green)
                .frame(width: 50, height: 50)
            Text(categoryName)
                .font(.subheadline)
                .foregroundColor(.primary)
        }
        .frame(width: 100, height: 100)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}
#Preview {
    CategoryCardView(categoryName: "Vegetables")
}