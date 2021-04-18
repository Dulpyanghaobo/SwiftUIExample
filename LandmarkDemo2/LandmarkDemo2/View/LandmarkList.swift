//
//  LandmarkList.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks : [Landmark] {
        // filter当中填入需要过滤的元素
        modelData.landmarks.filter {
            landmark in (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites onlu")
                }
                
                ForEach(filteredLandmarks) {landmark in
                    NavigationLink(destination: LandmarkDetail(landmark:landmark)){
                        landmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Ladmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
