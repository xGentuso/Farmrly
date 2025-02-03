import Foundation

struct FarmItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
    let category: String  // Make sure this property exists!
}
