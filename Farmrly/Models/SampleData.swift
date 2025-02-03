struct SampleData {
    static let farmItems = [
        FarmItem(name: "Organic Apples", price: 3.99, imageName: "apples", category: "Fruits"),
        FarmItem(name: "Free-Range Eggs", price: 5.49, imageName: "eggs", category: "Dairy"),
        FarmItem(name: "Fresh Strawberries", price: 4.99, imageName: "strawberries", category: "Fruits"),
        FarmItem(name: "Carrots", price: 2.99, imageName: "carrots", category: "Vegetables"),
        FarmItem(name: "Whole Wheat Bread", price: 3.49, imageName: "bread", category: "Baked Goods")
    ]

    // Add featuredItems here
    static let featuredItems = [
        farmItems[0], // Organic Apples
        farmItems[2], // Fresh Strawberries
        farmItems[4]  // Whole Wheat Bread
    ]
}
