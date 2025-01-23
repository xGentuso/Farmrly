//
//  FarmItem.swift
//  Farmrly
//
//  Created by ryan mota on 2025-01-23.
//

import Foundation

struct FarmItem: Identifiable {
    let id = UUID()
    let name: String
    let price: Double
    let imageName: String
}
