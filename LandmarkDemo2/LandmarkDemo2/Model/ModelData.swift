//
//  ModelData.swift
//  LandmarkDemo2
//
//  Created by 杨皓博 on 2021/4/18.
//

import Foundation
import Combine

final class ModelData : ObservableObject {
    @Published var landmarks : [Landmark] = load("landmarkData.json")
}


/// 获取本地数据加载数据模版
/// - Parameter filename: 文件名称
/// - Returns: 返回值
func load<T: Decodable>(_ filename: String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) from main bundle:\n(error)")
    }
    
    do {

        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}