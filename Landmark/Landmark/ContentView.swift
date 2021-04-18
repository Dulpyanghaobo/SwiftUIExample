//
//  ContentView.swift
//  Landmark
//
//  Created by 杨皓博 on 2021/4/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CircleImage().offset(y: -130).padding(.bottom,-130)
        
            VStack(alignment:.leading){
                Text("Hello, world!")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                }
                Divider()
                Text("about de")
                    .font(.subheadline)
                Text("Descip")
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
