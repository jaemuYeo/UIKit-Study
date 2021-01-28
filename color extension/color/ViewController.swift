//
//  ViewController.swift
//  color
//
//  Created by 잼킹 on 2021/01/17.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changedColor: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        changedColor.textColor = UIColor(r: 0, g: 0, b: 255, a: 1.0)
    }


}


extension UIColor {
    convenience init(r: Int, g: Int, b: Int, a: CGFloat) {
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a))
    }
}


