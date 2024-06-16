//
//  DiningHalls.swift
//  HelloSwiftUI
//
//  Created by Catherine Zhao on 2024/6/15.
//

import Foundation

struct DiningHalls: Identifiable, Hashable, Equatable {
    
    let id = UUID()
    let name: String
    let photo: String
    let hours: String
    let labels: [Labels]
    var isPinned: Bool
}
