//
//  CircleImage.swift
//  Landmark
//
//  Created by 杨皓博 on 2021/4/17.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock").frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 4)).shadow(radius: 7)
        
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
