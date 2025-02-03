import SwiftUI

struct ItemCardView: View {
    let farmItem: FarmItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Image(farmItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .cornerRadius(8)
                .shadow(radius: 2)
            
            Text(farmItem.name)
                .font(.headline)
                .foregroundColor(.primary)
            
            Text(String(format: "$%.2f", farmItem.price))
                .font(.subheadline)
                .foregroundColor(.green)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.1), radius: 4, x: 0, y: 2)
    }
}

struct ItemCardView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCardView(farmItem: SampleData.farmItems[0])
            .previewLayout(.sizeThatFits)
    }
}
