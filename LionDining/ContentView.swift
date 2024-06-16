//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Catherine Zhao on 2024/6/15.
//



import SwiftUI


struct ContentView: View {
    
    let diningHalls = [
            DiningHalls(name: "John Jay Dining Hall", photo: "john-jay-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "JJ's Place", photo: "jj-place-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Faculty House", photo: "faculty-house-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Ferris Booth Commons", photo: "ferris-booth-commons-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Chef Mike's Sub Shop", photo: "chef-mike-sub-shop-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Chef Don's Pizza Pi", photo: "chef-don-pizza-pi-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Grace Dodge Dining Hall", photo: "grace-dodge-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "Robert F. Smith Dining Hall", photo: "robert-f-smith-cover", hours: "Closed for next 1 week"),
            DiningHalls(name: "The Fac Shack", photo: "fac-shack-cover", hours: "Closed for next 1 week")
        ]
    
    var body: some View {
        NavigationStack{
            List(diningHalls) { diningHall in
                NavigationLink(value: diningHall){
                    DiningHallCellView(diningHall: diningHall)
                }
            }.navigationTitle("Dining Halls")
                .navigationDestination(for: DiningHalls.self){ diningHalls in
                    Text(diningHalls.name)
                }
        }
    }
}

#Preview {
    ContentView()
}

struct DiningHallCellView: View {
    let diningHall: DiningHalls
    var body: some View {
        HStack(alignment: .top){
            Image(diningHall.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .clipped()
                .padding(.vertical, 10)
            VStack(alignment: .leading){
                Text(diningHall.name)
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "#004aa8"))
                    .padding(.leading, 3)
                Text(diningHall.hours)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.leading, 3)
            }
            .padding(.leading, 5)
            .padding(.top, 10)
            .padding(.bottom, 10)
            Spacer()
        }
        .padding(.horizontal, 5)
    }
}
