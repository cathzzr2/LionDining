//
//  DiningHallCellView.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/17.
//

import Foundation
import SwiftUI

struct DiningHallCellView: View {
    var diningHall: DiningHalls
    var body: some View {
        HStack(alignment: .top) {
            Image(diningHall.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80)
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical, 10)
            VStack(alignment: .leading) {
                HStack{
                    Text(diningHall.name)
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .padding(.leading, 3)
                        .padding(.bottom, 5)
                    ForEach(diningHall.labels) { label in
                        if label.text.lowercased() == "columbia" ||
                           label.text.lowercased() == "barnard" ||
                           label.text.lowercased() == "business" {
                            Text(label.text)
                                .font(.system(size: 12))
                                .padding(5)
                                .background(label.color)
                                .foregroundColor(.white)
                                .cornerRadius(5)
                        }
                    }
                }
                
                Text(diningHall.hours)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                    .padding(.leading, 3)
                TagView(labels: diningHall.labels.filter { label in
                        !(label.text.lowercased() == "columbia" ||
                          label.text.lowercased() == "barnard" ||
                          label.text.lowercased() == "business")
                    })
                    .padding(.top, 5)
            }
            .padding(.leading, 5)
            .padding(.top, 10)
            .padding(.bottom, 10)
            Spacer()
        }
        .padding(.horizontal, 5)
    }
}
struct TagView: View {
    let labels: [Labels]
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ForEach(labels.chunked(into: 4), id: \.self) { pair in
                HStack {
                    ForEach(pair) { label in
                        Text(label.text)
                            .font(.system(size: 12))
                            .padding(5)
                            .background(label.color)
                            .foregroundColor(.white)
                            .cornerRadius(5)
                    }
                }
            }
        }
    }
}
extension Array {
    func chunked(into size: Int) -> [[Element]] {
        var chunks: [[Element]] = []
        for i in stride(from: 0, to: count, by: size) {
            chunks.append(Array(self[i..<Swift.min(i + size, count)]))
        }
        return chunks
    }
}
