import SwiftUI

@main
struct FarmrlyApp: App {
    @StateObject private var authViewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            MainTabView(selectedTab: .constant(0))
                .environmentObject(authViewModel) // ✅ Inject here too
        }
    }
}
