//
//  EntryView.swift
//  clothes-storage
//
//  Created by Justin Dulay on 2/21/21.
//

import Foundation

extension ViewController {
    
    func setUpEntryContentView() {
        view.addSubview(entryContentView)
        
        entryContentView.addSubview(logo)
        view.addSubview(loginButton)

        entryContentView.translatesAutoresizingMaskIntoConstraints = false
        entryContentView.heightAnchor.constraint(equalToConstant: view.frame.height/2).isActive = true
        
        entryContentView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        entryContentView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        entryContentView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setupLogo()
        setupLoginButton()
    }
    
    func setupLogo() {
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.isUserInteractionEnabled = true
        logo.backgroundColor = .white
        
        logo.widthAnchor.constraint(equalToConstant: 120).isActive = true
        logo.heightAnchor.constraint(equalToConstant: 120).isActive = true
        logo.centerXAnchor.constraint(equalTo: entryContentView.centerXAnchor, constant: 0).isActive = true
        logo.centerYAnchor.constraint(equalTo: entryContentView.centerYAnchor, constant: 0).isActive = true
    }
    
    func setupLoginButton() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.isUserInteractionEnabled = true
        loginButton.backgroundColor = .white
        
        loginButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        loginButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -80).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
