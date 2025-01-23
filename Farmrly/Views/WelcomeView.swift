//
//  WelcomeView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                // Background color (could be replaced with an image or gradient)
                Color(.systemBackground)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Spacer()
                    
                    // Title
                    Text("Welcome to Farmrly")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    
                    // Subtitle / Description
                    Text("Discover fresh, locally sourced produce and artisanal goods right at your doorstep.")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 30)
                    
                    Spacer()
                    
                    // "Get Started" Button
                    NavigationLink(destination: HomeView()) {
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
            .navigationBarTitle("") // Empty title
            .navigationBarHidden(true)
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
