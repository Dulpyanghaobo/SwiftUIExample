//
//  ProfileSummary.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
//

import SwiftUI

struct ProfileSummary: View {
    
    @EnvironmentObject var modelData : ModelData
    
    var profile : Profile
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Text(profile.username)
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                Divider()
                
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("Completed Badge").font(.headline)
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day").hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike").grayscale(0.5).hueRotation(Angle(degrees: 45))
                            
                        }.padding(.bottom)
                    })
                })
                
                Divider()
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    Text("Recent Hikes").font(.headline)
                    HikeView(hike: modelData.hikes[0])
                })
            })
        })
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
