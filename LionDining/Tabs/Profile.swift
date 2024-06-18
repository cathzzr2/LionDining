//
//  Profile.swift
//  LionDining
//
//  Created by Catherine Zhao on 2024/6/17.
//

import Foundation
import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationStack {
            VStack {
                // 顶部的 Banner
                Banner()
                
                // 用户信息
                VStack(spacing: 20) {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .foregroundColor(.gray)
                    Text("John Doe")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("john.doe@example.com")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding()
                
                // 设置选项
                List {
                    Section(header: Text("Settings")) {
                        NavigationLink(destination: Text("Account Settings")) {
                            HStack {
                                Image(systemName: "person")
                                Text("Account Settings")
                            }
                        }
                        NavigationLink(destination: Text("Notifications")) {
                            HStack {
                                Image(systemName: "bell")
                                Text("Notifications")
                            }
                        }
                        NavigationLink(destination: Text("Privacy")) {
                            HStack {
                                Image(systemName: "lock")
                                Text("Privacy")
                            }
                        }
                    }
                    
                    Section(header: Text("Support")) {
                        NavigationLink(destination: Text("Help & Support")) {
                            HStack {
                                Image(systemName: "questionmark.circle")
                                Text("Help & Support")
                            }
                        }
                        NavigationLink(destination: Text("About")) {
                            HStack {
                                Image(systemName: "info.circle")
                                Text("About")
                            }
                        }
                    }
                    
                    Section {
                        Button(action: {
                            // 添加登出按钮的动作
                        }) {
                            HStack {
                                Image(systemName: "arrow.right.square")
                                Text("Log Out")
                                    .foregroundColor(.red)
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                
                Spacer()
            }
        }
    }
}

#Preview {
    Profile()
}
