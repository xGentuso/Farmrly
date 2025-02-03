import SwiftUI

// MARK: - Models

struct Category: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
}

// MARK: - BrowseView

struct BrowseView: View {
    // Example categories with icons (using SF Symbols)
    private let categories = [
        Category(name: "Fruits", icon: "applelogo"),
        Category(name: "Vegetables", icon: "leaf.fill"),
        Category(name: "Dairy", icon: "drop.fill"),
        Category(name: "Baked Goods", icon: "cup.and.saucer.fill")
    ]
    
    @State private var searchText: String = ""
    
    // Define two flexible columns for a grid layout
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                // Search Bar at the top
                SearchBar(text: $searchText)
                    .padding(.horizontal)
                
                // Horizontal list of categories with NavigationLink
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(categories) { category in
                            NavigationLink(destination: CategoryView(categoryName: category.name)) {
                                VStack {
                                    Image(systemName: category.icon)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 40, height: 40)
                                        .padding()
                                        .background(Color.green.opacity(0.2))
                                        .cornerRadius(10)
                                    
                                    Text(category.name)
                                        .font(.caption)
                                        .foregroundColor(.primary)
                                }
                                .frame(width: 80)
                            }
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.vertical, 10)
                
                Spacer()
                Text("Select a category to view items")
                    .foregroundColor(.secondary)
                    .font(.title2)
                Spacer()
            }
            .navigationTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
