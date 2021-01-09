//
//  ViewController.swift
//  Slider
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class SimpleSliderViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    @IBAction func sliderChanged(_ sender: Any) {
        // 현재값에 접근
        let r = CGFloat(redSlider.value)
        let g = CGFloat(greenSlider.value)
        let b = CGFloat(blueSlider.value)
        // 세 값을 통해서 새로운 컬러 만들기
        let color = UIColor(red: r, green: g, blue: b, alpha: 1.0)
        // 루트뷰의 백그라운드컬러
        view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 슬리이더 value 속성 구현
        redSlider.value = 1.0
        greenSlider.value = 1.0
        blueSlider.value = 1.0
        
        // 슬라이더 범위 구현
        redSlider.minimumValue = 0.0
        redSlider.maximumValue = 1.0
        
    }


}

