//
//  OffCampus.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/17.
//

import Foundation
import SwiftUI

struct OffCampus: View {
    
    @State private var showDiningHalls = true
    
    @State private var diningHalls = [
        DiningHalls(name: "John Jay Dining", photo: "john-jay-cover", hours: "Closed for next 1 week", labels: [
                    Labels(text: "Columbia", color: Color(hex: "75aadb")),
                    Labels(text: "Swipe", color: Color(hex: "097969")),
                    Labels(text: "Dollars", color:.yellow),
                    Labels(text: "Flex", color: .purple)
                ], isPinned: false),
            DiningHalls(name: "JJ's Place", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Faculty House", photo: "faculty-house-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "Ferris Booth Commons", photo: "ferris-booth-commons-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Chef Mike's Sub Shop", photo: "chef-mike-sub-shop-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "Chef Don's Pizza Pi", photo: "chef-don-pizza-pi-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "Grace Dodge Dining", photo: "grace-dodge-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "Robert F. Smith Dining", photo: "robert-f-smith-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Business", color: Color(hex: "a8cee2")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "The Fac Shack", photo: "fac-shack-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Dollars", color:.yellow)
            ], isPinned: false),
            DiningHalls(name: "Hewitt Food Hall", photo: "hewitt-food-hall", hours: "Closed for next 1 week", labels: [
                Labels(text: "Barnard", color: Color(hex: "01427c")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Points", color: .pink),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple),
                
            ], isPinned: false),
            DiningHalls(name: "Diana Center Cafe", photo: "hewitt-food-hall", hours: "Closed for next 1 week", labels: [
                Labels(text: "Barnard", color: Color(hex: "01427c")),
                Labels(text: "Swipe", color: Color(hex: "097969")),
                Labels(text: "Points", color: .pink),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple),
                
            ], isPinned: false)
        ]
    
    @State private var retailStores = [
        DiningHalls(name: "Milstein Sushi Bar", photo: "john-jay-cover", hours: "Closed for next 1 week", labels: [
                    Labels(text: "Barnard", color: Color(hex: "01427c")),
                    Labels(text: "Points", color: .pink),
                    Labels(text: "Dollars", color:.yellow),
                    Labels(text: "Flex", color: .purple)
                ], isPinned: false),
            DiningHalls(name: "Liz's Place", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Barnard", color: Color(hex: "01427c")),
                Labels(text: "Points", color: .pink),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Blue Java Café at Bulter Library", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Blue Java Café at Mudd Hall", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Blue Java Café at Uris", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Blue Java at Everett Library Café", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
            DiningHalls(name: "Lenfest Café", photo: "jj-place-cover", hours: "Closed for next 1 week", labels: [
                Labels(text: "Columbia", color: Color(hex: "75aadb")),
                Labels(text: "Dollars", color:.yellow),
                Labels(text: "Flex", color: .purple)
            ], isPinned: false),
        ]
    
    var body: some View {
        NavigationStack {
            VStack {
                Banner()
                // 中间的切换按钮
                HStack {
                    Button(action: {
                        showDiningHalls = true
                    }) {
                        Text("Use Flex")
                            .font(.system(size: 14))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(showDiningHalls ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        showDiningHalls = false
                    }) {
                        Text("Others")
                            .font(.system(size: 14))
                            .padding(.vertical, 8)
                            .padding(.horizontal, 16)
                            .background(!showDiningHalls ? Color.blue : Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                
                // 列表内容
                List {
                    ForEach(showDiningHalls ? diningHalls : retailStores) { item in
                        NavigationLink(destination: Text(item.name)) {
                            DiningHallCellView(diningHall: item)
                        }
                        .swipeActions(edge: .leading) {
                            Button(action: {
                                togglePin(for: item)
                            }) {
                                HStack {
                                    Image(systemName: "pin")
                                        .foregroundColor(.white)
                                    Text(item.isPinned ? "Unpin" : "Pin")
                                        .foregroundColor(.white)
                                }
                                .padding()
                                .background(Color.blue)
                                .cornerRadius(10)
                            }
                        }
                    }
                }
                .listStyle(PlainListStyle())
                .background(Color.black.opacity(0.1))
            }
        }
    }
    private func togglePin(for item: DiningHalls) {
        if let index = diningHalls.firstIndex(where: { $0.name == item.name }) {
                diningHalls[index].isPinned.toggle()
                
                if diningHalls[index].isPinned {
                    // Move pinned item to the top
                    let pinnedItem = diningHalls.remove(at: index)
                    diningHalls.insert(pinnedItem, at: 0)
                } else {
                    // Move unpinned item to the end
                    let unpinnedItem = diningHalls.remove(at: index)
                    diningHalls.append(unpinnedItem)
                }
        } else if let index = retailStores.firstIndex(where: { $0.name == item.name }) {
            retailStores[index].isPinned.toggle()
            
            if retailStores[index].isPinned {
                // Move pinned item to the top
                let pinnedItem = retailStores.remove(at: index)
                retailStores.insert(pinnedItem, at: 0)
            } else {
                // Move unpinned item to the end
                let unpinnedItem = retailStores.remove(at: index)
                retailStores.append(unpinnedItem)
            }
        }
    }
    
}

#Preview {
    OffCampus()
}
