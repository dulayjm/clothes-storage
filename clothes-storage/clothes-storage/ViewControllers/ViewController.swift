//
//  ViewController.swift
//  clothes-storage
//
//  Created by Justin Dulay on 2/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Attributes
    // TODO: Connect with API for login functionality
    
    let entryContentView:UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let logo:UIImageView = {
        let logo = UIImage(named: "clothes-graphic")
        var logoImageView = UIImageView(image: logo)
        return logoImageView
    }()
    
    var loginButton:UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(
            self,
            action: #selector(loginButtonPressed),
            for: .touchUpInside)
        return button
    }()
    
    // MARK: View Lifecyle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setUpEntryContentView()
    }

    // MARK: Private Methods
    @objc func loginButtonPressed() {
        let newViewController = MainViewController()
        self.present(newViewController, animated: true, completion: nil)
    }
}
