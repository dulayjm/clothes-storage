//
//  LibraryModel.swift
//  clothes-storage
//
//  Created by Justin Dulay on 3/22/21.
//

import Foundation

import Foundation

struct ClothesItem: Decodable {
    var hid: Int
    var description: String
    var month: String
    var day: String
    var year: String
}

class LibraryModel {
    
    weak var delegate: Downloadable?
    let networkModel = Network()
    
    func downloadClothes(url: String) {
        let request = networkModel.request(url: url)
        networkModel.response(request: request) { (data) in
            let model = try! JSONDecoder().decode([ClothesItem]?.self, from: data) as [ClothesItem]?
            self.delegate?.didReceiveData(data: model! as [ClothesItem])
        }
    }
}
