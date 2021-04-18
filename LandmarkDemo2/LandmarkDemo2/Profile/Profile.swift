//
//  Profile.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
//

import Foundation


struct Profile {
    var username : String
    var prefersNotifications = true
    var seasonalPhtot = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "g_kumar")
    enum Season : String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id : String {
            self.rawValue
        }
    }
}
