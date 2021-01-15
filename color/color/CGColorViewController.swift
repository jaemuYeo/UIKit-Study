//
//  CGColorViewController.swift
//  color
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class CGColorViewController: UIViewController {
    
    @IBOutlet weak var colorView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.borderWidth = 10
        colorView.layer.borderColor = UIColor.systemRed.cgColor
        
    }

}
