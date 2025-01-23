//
//  DetailView.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import SwiftUI

struct DetailView: View {
    let farmItem: FarmItem
    
    var body: some View {
        VStack(spacing: 16) {
            Image(farmItem.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
                .padding()
            
            Text(farmItem.name)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text(String(format: "$%.2f", farmItem.price))
                .font(.title2)
                .foregroundColor(.green)
            
            Spacer()
            
            Button(action: {
                print("Order placed for \(farmItem.name)")
            }) {
                Text("Order Now")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
        }
        .navigationBarTitle("Details", displayMode: .inline)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(farmItem: SampleData.farmItems[0])
    }
}
