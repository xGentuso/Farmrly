import SwiftUI

struct FeaturedItemCardView: View {
    let farmItem: FarmItem

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(farmItem.imageName) // Ensure `imageName` matches the asset name
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(10)
                .shadow(radius: 5)

            Text(farmItem.name)
                .font(.headline)
                .foregroundColor(.primary)

            Text(String(format: "$%.2f", farmItem.price))
                .font(.subheadline)
                .foregroundColor(.green)
        }
        .padding()
        .frame(width: 180)
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
    }
}

struct FeaturedItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemCardView(
            farmItem: FarmItem(
                name: "Fresh Strawberries",
                price: 4.99,
                imageName: "strawberry",
                category: "Fruits"  // Added this line to fix the error
            )
        )
    }
}
