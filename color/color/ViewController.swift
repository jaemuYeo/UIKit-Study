//
//  ViewController.swift
//  color
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var r = CGFloat(0)
        var g = CGFloat(0)
        var b = CGFloat(0)
        var a = CGFloat(0)
        
        colorView.backgroundColor?.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        redSlider.value = Float(r)
        greenSlider.value = Float(g)
        blueSlider.value = Float(b)

        colorView.backgroundColor = UIColor.systemOrange
        
    }
    
    @IBAction func changedSlider(_ sender: UISlider) {
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(displayP3Red: r, green: g, blue: b, alpha: 1.0)
    }


}

