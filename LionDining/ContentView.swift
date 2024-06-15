//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Catherine Zhao on 2024/6/15.
//



import SwiftUI


struct ContentView: View {
    
    let diningHalls = [
            DiningHalls(name: "John Jay Dining Hall", photo: "john-jay-cover", hours: "Closed for next 2 weeks"),
            DiningHalls(name: "JJ's Place", photo: "jj-place-cover", hours: "Closed for next 2 weeks")
    
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
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .padding(.vertical, 8)
            VStack(alignment: .leading){
                Text(diningHall.name)
                    .font(.system(size: 20)) // Adjust font size and style here
                    .fontWeight(.bold) // Optionally adjust font weight
                    .foregroundColor(Color(hex: "#004aa8"))
                Text(diningHall.hours)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            .padding(.leading, 8)
            .padding(.top, 25)
            Spacer()
        }
        .padding(.horizontal, 8)
    }
}
