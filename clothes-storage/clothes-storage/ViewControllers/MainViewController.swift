//
//  MainViewController.swift
//  clothes-storage
//
//  Created by Justin Dulay on 2/21/21.
//

import Foundation
import UIKit

class MainViewController: UIViewController {
    
    // MARK: Attributes
    let mainContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    var randomButton:UIButton = {
        let button = UIButton()
        button.setTitle("Random Outfit", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(
            self,
            action: #selector(randomButtonPressed),
            for: .touchUpInside)
        return button
    }()
    
    var libraryButton:UIButton = {
        let button = UIButton()
        button.setTitle("Library", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(
            self,
            action: #selector(libraryButtonPressed),
            for: .touchUpInside)
        return button
    }()
    
    var shopButton:UIButton = {
        let button = UIButton()
        button.setTitle("Shop Store", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(
            self,
            action: #selector(shopButtonPressed),
            for: .touchUpInside)
        return button
    }()
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupMainContentView()
    }
    
    // MARK: Private Methods
    @objc func randomButtonPressed() {
        
        
    }
    
    @objc func libraryButtonPressed() {
        
        
    }
    
    @objc func shopButtonPressed() {
        
        
    }
    
}
