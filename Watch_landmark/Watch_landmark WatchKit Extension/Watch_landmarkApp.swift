//
//  Watch_landmarkApp.swift
//  Watch_landmark WatchKit Extension
//
//  Created by 杨皓博 on 2021/4/19.
//

import SwiftUI

@main
struct Watch_landmarkApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
