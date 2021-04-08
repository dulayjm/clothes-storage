//
//  ShopModel.swift
//  clothes-storage
//
//  Created by Justin Dulay on 4/5/21.
//

import Foundation

class ShopModel {
    
    weak var delegate: ShopProtocal?
    let networkModel = Network()
    
    func downloadClothes(url: String) {
        let request = networkModel.request(url: url)
        networkModel.response(request: request) { (data) in
            let model = try! JSONDecoder().decode([ClothesItem]?.self, from: data) as [ClothesItem]?
            self.delegate?.didReceiveData(data: model! as [ClothesItem])
        }
    }
}
