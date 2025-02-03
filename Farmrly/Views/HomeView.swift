import SwiftUI

struct HomeView: View {
    @Binding var selectedTab: Int

    private let categories = ["Fruits", "Vegetables", "Dairy", "Baked Goods"]
    private let featuredItems = SampleData.featuredItems

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // MARK: - Hero Section
                    HeroBannerView()
                        .frame(height: 200)
                        .cornerRadius(20)
                        .shadow(radius: 5)
                        .padding(.horizontal)
                        .overlay(
                            VStack {
                                Spacer()
                                Button(action: {
                                    selectedTab = 1 // Redirect to Browse tab
                                }) {
                                    Text("Shop Now")
                                        .fontWeight(.bold)
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(Color.green)
                                        .foregroundColor(.white)
                                        .cornerRadius(12)
                                }
                                .padding(.horizontal, 40)
                                .padding(.bottom, 10)
                            }
                        )
                    
                    // MARK: - Categories (Grid Layout)
                    SectionHeader(title: "Categories")
                        .padding(.horizontal)
                    
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ForEach(categories, id: \.self) { category in
                            NavigationLink(destination: CategoryView(categoryName: category)) {
                                VStack(spacing: 10) {
                                    Image(systemName: "leaf.circle.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .foregroundColor(.green)
                                    Text(category)
                                        .fontWeight(.medium)
                                }
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 3)
                            }
                        }
                    }
                    .padding(.horizontal)

                    // MARK: - Featured Items Section
                    SectionHeader(title: "Featured Items")
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(featuredItems) { item in
                                NavigationLink(destination: DetailView(farmItem: item)) {
                                    FeaturedItemCardView(farmItem: item)
                                        .frame(width: 180, height: 220)
                                        .background(Color.white)
                                        .cornerRadius(15)
                                        .shadow(color: Color.black.opacity(0.1), radius: 8, x: 0, y: 4)
                                }
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.vertical)
            }
            .background(Color(.systemGroupedBackground).ignoresSafeArea())
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    HStack {
                        Image(systemName: "leaf.fill")
                            .foregroundColor(.green)
                            .font(.title2)
                        Text("Farmrly")
                            .font(.headline)
                            .foregroundColor(.primary)
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack(spacing: 20) {
                        Button(action: {
                            selectedTab = 3 // Redirect to Profile tab
                        }) {
                            Image(systemName: "person.circle")
                                .font(.title2)
                        }
                        Button(action: {
                            selectedTab = 2 // Redirect to Cart tab
                        }) {
                            Image(systemName: "cart")
                                .font(.title2)
                        }
                    }
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    @State static var selectedTab = 0 // Create a State variable for binding

    static var previews: some View {
        HomeView(selectedTab: $selectedTab) // Pass the binding correctly
    }
}
