//
//  HomeView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct HomeView: View {
    
    // Example categories & featured items
    private let categories = ["Fruits", "Vegetables", "Dairy", "Baked Goods"]
    private let featuredItems = [
        "Organic Apples",
        "Pasture-Raised Eggs",
        "Fresh Strawberries"
    ]
    
    var body: some View {
        NavigationView {
            ZStack {
                // Background (Can be a Color or a Gradient)
                Color(.systemGroupedBackground)
                    .ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // MARK: - Hero / Banner
                        HeroBannerView()
                            .padding(.top, 10)
                        
                        // MARK: - Category Section
                        SectionHeader(title: "Shop by Category")
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(categories, id: \.self) { category in
                                    NavigationLink(destination: CategoryView(categoryName: category)) {
                                        CategoryCardView(categoryName: category)
                                    }
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        // MARK: - Featured Items Section
                        SectionHeader(title: "Featured Items")
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15) {
                                ForEach(featuredItems, id: \.self) { item in
                                    FeaturedItemCardView(itemName: item)
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                        Spacer(minLength: 30)
                    }
                    .padding(.bottom, 20)
                }
            }
            .navigationTitle("Farmrly")
            .navigationBarTitleDisplayMode(.inline)
            // MARK: - Nav Bar Items
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    // Logo or text - e.g., "Farmrly"
                    HStack {
                        Image(systemName: "leaf")
                            .foregroundColor(.green)
                        Text("Farmrly")
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 20) {
                        Button(action: {
                            // Profile action
                            print("Profile tapped")
                        }) {
                            Image(systemName: "person.crop.circle")
                        }
                        Button(action: {
                            // Cart action
                            print("Cart tapped")
                        }) {
                            Image(systemName: "cart")
                        }
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEWS
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
