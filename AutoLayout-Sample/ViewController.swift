//
//  ViewController.swift
//  AutoLayout-Sample
//
//  Created by Shinya Kumagai on 2020/02/27.
//  Copyright © 2020 Shinya Kumagai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var saveButton: UIButton!
    
    @IBOutlet private weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let space = UILayoutGuide()
        view.addLayoutGuide(space)
        
        space.widthAnchor.constraint(equalTo: saveButton.widthAnchor, multiplier: 1.0).isActive = true
        space.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        saveButton.trailingAnchor.constraint(equalTo: space.leadingAnchor).isActive = true
        cancelButton.leadingAnchor.constraint(equalTo: space.trailingAnchor).isActive = true
    }
}

