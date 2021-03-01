//
//  MainView.swift
//  clothes-storage
//
//  Created by Justin Dulay on 2/28/21.
//

import Foundation
import UIKit

extension MainViewController {
    
    func setupMainContentView() {
        view.backgroundColor = .white
        view.addSubview(mainContentView)
        
        mainContentView.addSubview(randomButton)
        mainContentView.addSubview(libraryButton)
        mainContentView.addSubview(shopButton)

        mainContentView.translatesAutoresizingMaskIntoConstraints = false
        mainContentView.heightAnchor.constraint(equalToConstant: view.frame.height).isActive = true
        
        mainContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        mainContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        mainContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setupRandomButton()
        setupLibraryButton()
        setupShopButton()
    }
    
    func setupRandomButton() {
        randomButton.translatesAutoresizingMaskIntoConstraints = false
        randomButton.isUserInteractionEnabled = true
        randomButton.backgroundColor = .white
        
        randomButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        randomButton.heightAnchor.constraint(equalToConstant: 120).isActive = true
        randomButton.centerXAnchor.constraint(equalTo: mainContentView.centerXAnchor, constant: 0).isActive = true
        randomButton.centerYAnchor.constraint(equalTo: mainContentView.centerYAnchor, constant: 0).isActive = true
    }
    
    func setupLibraryButton() {
        libraryButton.translatesAutoresizingMaskIntoConstraints = false
        libraryButton.isUserInteractionEnabled = true
        libraryButton.backgroundColor = .white
        
        libraryButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        libraryButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        libraryButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        libraryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func setupShopButton() {
        shopButton.translatesAutoresizingMaskIntoConstraints = false
        shopButton.isUserInteractionEnabled = true
        shopButton.backgroundColor = .white
        
        shopButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        shopButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        shopButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -160).isActive = true
        shopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
}

