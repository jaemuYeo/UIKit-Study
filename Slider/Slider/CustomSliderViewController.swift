//
//  CustomSliderViewController.swift
//  Slider
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class CustomSliderViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider 커스터마이징
        let img = UIImage(systemName: "lightbulb")
        // 실제로 앱을 많들때에는 모든 상태의 이미지를 설정해야한다.
        slider.setThumbImage(img, for: .normal)
        
        slider.minimumTrackTintColor = UIColor.systemRed
        slider.maximumTrackTintColor = UIColor.black

    }


}
