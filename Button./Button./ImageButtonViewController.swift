//
//  ImageButtonViewController.swift
//  Button.
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class ImageButtonViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let normalImage = UIImage(named: "plus-normal")
        let highlightedImage = UIImage(named: "plus-highlighted")
        
        btn.setImage(normalImage, for: .normal)
        btn.setImage(highlightedImage, for: .highlighted)
        
        btn.setBackgroundImage(normalImage, for: .normal)
    }
}
