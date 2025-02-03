import SwiftUI

struct MainTabView: View {
    @Binding var selectedTab: Int
    @EnvironmentObject var authViewModel: AuthViewModel // Inject the environment object

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            BrowseView()
                .tabItem {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
                .tag(1)

            CartView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }
                .tag(2)

            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile")
                }
                .tag(3)
        }
        .accentColor(.green)
    }
}

// MARK: - Preview
struct MainTabView_Previews: PreviewProvider {
    @State static var selectedTab = 0

    static var previews: some View {
        MainTabView(selectedTab: $selectedTab)
            .environmentObject(AuthViewModel()) // ✅ Inject AuthViewModel here
    }
}
