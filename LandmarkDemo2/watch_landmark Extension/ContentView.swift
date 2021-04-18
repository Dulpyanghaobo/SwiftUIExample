//
//  ContentView.swift
//  watch_landmark Extension
//
//  Created by 杨皓博 on 2021/4/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
