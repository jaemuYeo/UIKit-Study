//
//  textButtonViewController.swift
//  Button.
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class TextButtonViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn.setTitle("Hello", for: .normal)
        btn.setTitle("Haha", for: .highlighted)

        btn.setTitleColor(.systemRed, for: .normal)
        
        btn.titleLabel?.backgroundColor = .systemYellow
        
    }
}
