//
//  ViewController.swift
//  Button.
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class PlusViewController: UIViewController {
    
    @IBOutlet weak var textColorChange: UILabel!
    @IBOutlet weak var backgroundColorChange: UILabel!
    @IBOutlet weak var btn: UIButton!
    
    @objc func action(_ sender: Any) {
        self.textColorChange.textColor = .red
        self.backgroundColorChange.backgroundColor = .black
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let sel = #selector(action(_:))
        btn.addTarget(self, action: sel, for: .touchUpInside)
    }
    
}
