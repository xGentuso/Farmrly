import SwiftUI

struct WelcomeView: View {
    @State private var isActive: Bool = false
    @State private var selectedTab: Int = 0

    var body: some View {
        if isActive {
            MainTabView(selectedTab: $selectedTab) // Show MainTabView after "Get Started"
        } else {
            ZStack {
                Color(.systemBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    Text("Welcome to Farmrly")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    Text("Discover fresh, locally sourced produce and artisanal goods right at your doorstep.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            isActive = true // Activate MainTabView when tapped
                        }
                    }) {
                        Text("Get Started")
                            .foregroundColor(.white)
                            .font(.headline)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.green)
                            .cornerRadius(10)
                            .padding(.horizontal, 40)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
