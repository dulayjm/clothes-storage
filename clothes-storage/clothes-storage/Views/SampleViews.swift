//
//  SampleViews.swift
//  clothes-storage
//
//  Created by Justin Dulay on 3/16/21.
//

import Foundation
import UIKit

class SampleViews : UIView {

    override init(frame: CGRect){
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    // load in an image, set constraints, etc
    func setupView() {
        backgroundColor = .red
    }
    
}
