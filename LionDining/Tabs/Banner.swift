//
//  Banner.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/17.
//

import Foundation
import SwiftUI

struct Banner: View {
    var body: some View {
        HStack {
            Image("sample-logo2-circle")
                .resizable()
                .frame(width: 50, height: 50)
            Text("Lion Dining")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Button(action: {
                // 添加通知按钮的动作
            }) {
                Image(systemName: "bell")
                    .frame(width: 24, height: 24)
            }
            Button(action: {
                // 添加搜索按钮的动作
            }) {
                Image(systemName: "magnifyingglass")
                    .frame(width: 40, height: 40)
            }
        }
        .padding()
    }
}

#Preview {
    Banner()
}
