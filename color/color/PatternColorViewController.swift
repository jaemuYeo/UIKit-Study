//
//  PatternColorViewController.swift
//  color
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class PatternColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let img = UIImage(named: "apple") {
            let patternColor = UIColor(patternImage: img)
            
            view.backgroundColor = patternColor
        }
    }

}
