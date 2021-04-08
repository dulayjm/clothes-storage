//
//  ShopViewController.swift
//  clothes-storage
//
//  Created by Justin Dulay on 4/5/21.
//

import Foundation
import UIKit

class ShopViewController: UIViewController {
    
    // MARK: - Attributes
    var position = 0
    var items = [UIView]() // comment out and switch to model for fullstack
    var model: [UIView]?

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var leftRecognizer = UISwipeGestureRecognizer(target: self, action:#selector(swipeMade(_:)))
        leftRecognizer.direction = .left
        var rightRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(swipeMade(_:)))
        rightRecognizer.direction = .right
        self.view.addGestureRecognizer(leftRecognizer)
        self.view.addGestureRecognizer(rightRecognizer)
            
        items.append(SampleViews())
        items.append(SampleViews())
        items.append(SampleViews())

        items[0].backgroundColor = .blue
        items[1].backgroundColor = .green
 
    }
    
    // MARK: - Private Methods
    @objc func swipeMade(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .left {
            print("left swipe made")
            var p = self.position + 1
            if p >= self.items.count {
                p = 0
            }
            
            if let newView = loadItemAtPosition(position: p) as UIView? {
                print(newView)
            }
        }
       
        if sender.direction == .right {
            print("right swipe made")
            var p = self.position - 1
            if p < 0 {
                p = self.items.count - 1
            }
            
            if let newView = loadItemAtPosition(position: p) as UIView? {
                print(newView)
            }
        }
    }
    
    func loadItemAtPosition(position: Int) -> UIView {
        let newView = items[position]
        self.view.addSubview(newView)

        newView.translatesAutoresizingMaskIntoConstraints = false
        newView.heightAnchor.constraint(equalToConstant: self.view.frame.height).isActive = true
        
        newView.leftAnchor.constraint(equalTo: self.view.leftAnchor).isActive = true
        newView.rightAnchor.constraint(equalTo: self.view.rightAnchor).isActive = true
        newView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        
        return newView
    }

}
