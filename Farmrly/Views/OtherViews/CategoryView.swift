//
//  CategoryView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct CategoryView: View {
    let categoryName: String
    
    var body: some View {
        VStack {
            Text("Items in \(categoryName)")
                .font(.largeTitle)
                .padding()
            Spacer()
        }
        .navigationTitle(categoryName)
    }
}
#Preview {
    CategoryView(categoryName: "Fruits")
}