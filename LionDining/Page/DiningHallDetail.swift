//
//  DiningHallDetail.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/17.
//

import Foundation
import SwiftUI

struct DiningHallDetailView: View {
    let diningHall: DiningHalls // 或者 RetailStore，根据你的数据结构来定
    
    var body: some View {
        ScrollView {
            VStack {
                // 图片
                Image(diningHall.photo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .clipped()
                
                // 标签
                HStack(spacing: 8) {
                    ForEach(diningHall.labels) { label in
                        Text(label.text)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 4)
                            .background(label.color)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                }
                .padding(.vertical, 8)
                
                // 官方网站按钮
                Button(action: {
                    // 跳转到官方网站（假设为 www.columbia.edu）
                    if let url = URL(string: "https://www.columbia.edu") {
                        UIApplication.shared.open(url)
                    }
                }) {
                    Text("Official Website")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.vertical, 8)
                
                // 地图按钮（Google 和 Apple Maps 选项）
                HStack {
                    Button(action: {
                        // 跳转到 Google Maps（假设）
                    }) {
                        Text("Google Maps")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    
                    Button(action: {
                        // 跳转到 Apple Maps（假设）
                    }) {
                        Text("Apple Maps")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                }
                .padding(.vertical, 8)
                
                // 评分和评论
                VStack(alignment: .leading, spacing: 8) {
                    Text("Overall Rating: 5.0") // 示例评分
                        .font(.headline)
                    
                    ForEach(0..<5, id: \.self) { index in
                        Text("Comment \(index + 1): This place is great!") // 示例评论
                    }
                }
                .padding(.vertical, 8)
                
                // 用户新增评分和评论文本框
                VStack {
                    TextField("Add your rating", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.bottom, 8)
                    
                    TextField("Add your comments", text: .constant(""))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
                
                // 下一周数据库（暂时假设）
                VStack(alignment: .leading, spacing: 8) {
                    Text("Operating Hours:")
                        .font(.headline)
                    Text(diningHall.hours)
                    
                    Text("Menus:")
                        .font(.headline)
                    ForEach(0..<3) { index in
                        MenuRow() // 示例菜单项
                    }
                }
                .padding(.vertical, 8)
            }
            .padding()
        }
        .navigationTitle(diningHall.name)
    }
}

struct MenuRow: View {
    var body: some View {
        HStack {
            Text("Dish Name")
            Spacer()
            Button(action: {
                // 喜欢按钮动作（假设）
            }) {
                Image(systemName: "heart")
            }
            Button(action: {
                // 不喜欢按钮动作（假设）
            }) {
                Image(systemName: "hand.thumbsdown")
            }
            Button(action: {
                // 信息按钮动作（假设）
            }) {
                Image(systemName: "info.circle")
            }
        }
    }
}

