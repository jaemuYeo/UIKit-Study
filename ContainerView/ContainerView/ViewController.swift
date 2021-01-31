//
//  ViewController.swift
//  ContainerView
//
//  Created by 잼킹 on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bottomContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let childVC = storyboard?.instantiateViewController(withIdentifier: "Bottom") {
            addChild(childVC)
            childVC.view.frame = bottomContainer.bounds
            bottomContainer.addSubview(childVC.view)
        }
    }


}

