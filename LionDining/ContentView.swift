//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Catherine Zhao on 2024/6/15.
//



import SwiftUI


struct ContentView: View {
    
    var body: some View {
            TabView {
                OnCampus()
                    .tabItem {
                        Image(systemName: "house")
                        Text("On-campus")
                    }
                
                OffCampus()
                    .tabItem {
                        Image(systemName: "map")
                        Text("Off-campus")
                    }
                
                Profile()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Profile")
                    }
            }
        }
    
}

#Preview {
    ContentView()
}



