//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by luxury on 10/25/18.
//  Copyright © 2018 luxury. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        setupViews()
    }
    
    func setupViews() {
        let greenView = UIView()
        greenView.backgroundColor = .purple
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        greenView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        greenView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0)
        greenView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0)
        greenView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: view.bounds.height/2)
        
        self.view.addSubview(blueView)
    }
    
    

}

