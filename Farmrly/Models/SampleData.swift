import Foundation

struct SampleData {
    static let farmItems = [
        FarmItem(name: "Organic Apples", price: 3.99, imageName: "apples", category: "Fruits"),
        FarmItem(name: "Fresh Carrots", price: 2.49, imageName: "carrots", category: "Vegetables"),
        FarmItem(name: "Pasture-Raised Eggs", price: 5.99, imageName: "eggs", category: "Dairy"),
        FarmItem(name: "Artisanal Bread", price: 4.50, imageName: "bread", category: "Baked Goods"),
        FarmItem(name: "Fresh Strawberries", price: 4.99, imageName: "strawberry", category: "Fruits")
    ]

    static let featuredItems = [
        farmItems[0],
        farmItems[2],
        farmItems[4]
    ]
}
