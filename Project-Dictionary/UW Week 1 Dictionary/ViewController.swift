//
//  ViewController.swift
//  UW Week 1 Dictionary
//
//  Created by Martin Nash on 7/14/16.
//  Copyright © 2016 Martin Nash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coloredBox: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        coloredBox.layer.cornerRadius = 20
        coloredBox.layer.borderColor = UIColor.blueColor().CGColor
        coloredBox.layer.borderWidth = 100
        coloredBox.layer.masksToBounds = true
        
        let grad = CAGradientLayer()
        grad.colors = [ UIColor.redColor().CGColor, UIColor.yellowColor().CGColor ]
        grad.frame = coloredBox.layer.bounds
        coloredBox.layer.addSublayer(grad)
    
    
    }



}

