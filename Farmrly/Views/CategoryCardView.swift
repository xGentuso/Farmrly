import SwiftUI

struct CategoryCardView: View {
    let categoryName: String

    // Mapping category names to asset image names
    private var categoryImageName: String {
        switch categoryName {
            case "Fruits": return "apples"
            case "Vegetables": return "carrots"
            case "Dairy": return "eggs"
            case "Baked Goods": return "bread"
            default: return "leaf.circle.fill" // Default SF Symbol if no match
        }
    }

    var body: some View {
        VStack(spacing: 10) {
            Image(categoryImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 60)
                .cornerRadius(10)
                .shadow(radius: 4)

            Text(categoryName)
                .font(.subheadline)
                .foregroundColor(.primary)
        }
        .frame(width: 120, height: 140)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(categoryName: "Fruits")
    }
}
