//
//  ContentView.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
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
