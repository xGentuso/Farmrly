//
//  HeroBannerView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct HeroBannerView: View {
    var body: some View {
        ZStack {
            // Replace "farmBanner" with your asset image name
            Image("farmBanner")
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .cornerRadius(12)
                .shadow(radius: 4)
                .overlay(
                    // Dark gradient overlay to make text pop
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.3), Color.black.opacity(0.6)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .cornerRadius(12)
                )
            
            VStack(spacing: 8) {
                Text("Farm-Fresh, Delivered")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .shadow(color: Color.black.opacity(0.7), radius: 2, x: 0, y: 2)
                Text("Discover local produce and artisanal goods")
                    .font(.subheadline)
                    .foregroundColor(.white)
            }
            .padding()
        }
        .padding(.horizontal)
    }
}

struct HeroBannerView_Previews: PreviewProvider {
    static var previews: some View {
        HeroBannerView()
    }
}
