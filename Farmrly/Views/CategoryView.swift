import SwiftUI

struct CategoryView: View {
    let categoryName: String
    
    // Example items per category
    var categoryItems: [FarmItem] {
        switch categoryName {
        case "Fruits":
            return SampleData.farmItems.filter { $0.name.contains("Apple") || $0.name.contains("Strawberries") }
        case "Vegetables":
            // Add actual vegetable items
            return []
        case "Dairy":
            return SampleData.farmItems.filter { $0.name.contains("Eggs") }
        case "Baked Goods":
            // Add actual baked goods items
            return []
        default:
            return []
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                SectionHeader(title: "\(categoryName)")
                
                ForEach(categoryItems) { item in
                    NavigationLink(destination: DetailView(farmItem: item)) {
                        HStack(spacing: 15) {
                            Image(item.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                                .shadow(radius: 2)
                            
                            VStack(alignment: .leading, spacing: 5) {
                                Text(item.name)
                                    .font(.headline)
                                Text(String(format: "$%.2f", item.price))
                                    .font(.subheadline)
                                    .foregroundColor(.green)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .navigationTitle(categoryName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(categoryName: "Fruits")
    }
}
