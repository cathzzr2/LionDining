//
//  RetailStores.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/16.
//

import Foundation

struct RetailStores: Identifiable, Hashable {
    
    let id = UUID()
    let name: String
    let photo: String
    let hours: String
    let labels: [Labels]
}

