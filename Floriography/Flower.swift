//
//  Flower.swift
//  Floriography
//
//  Created by kwanhathai on 29/5/2565 BE.
//  Copyright © 2565 BE Kwanhathai. All rights reserved.
//

import Foundation

struct Flower: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    let imageName: String
    let tag: String
    let meaning: String
    let origin: String
    let pairWith: String
}

struct FlowerSection: Identifiable, Codable {
    
    var id: String { name }
    
    let name: String
    var picturesImageName: [String]
    
}


extension Flower: Equatable {
    static func == (lhs: Flower, rhs: Flower) -> Bool {
        lhs.id == rhs.id
    }
}

extension Flower {
    static var stubbed: [Flower] {
        let url = Bundle.main.url(forResource: "Floriography_list", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        let flowers = try! JSONDecoder().decode([Flower].self, from: data)	
        return flowers
    }
}
