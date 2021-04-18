//
//  Landmark.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
//

import Foundation
import SwiftUI
import CoreLocation

/// 建立Landmark model
struct Landmark: Hashable, Codable, Identifiable {
    var id : Int
    var name : String
    var park : String
    var state : String
    var description : String
    var isFavorite : Bool
    var isFeatured : Bool
    private var imageName : String
    var image : Image {
        Image(imageName)
    }
    
    var category : Category
    enum Category : String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountions = "Mountains"
    }
    
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }
    
    private var coordinates: Coordinates
    struct Coordinates : Hashable, Codable {
        var latitude : Double
        var longitude : Double
    }
    
    //    MARK: 设置经纬度
    var locationCoordinate : CLLocationCoordinate2D {
        CLLocationCoordinate2D (latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    
}
