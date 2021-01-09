//
//  ViewController.swift
//  Switch & Stepper
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class SwitchViewController: UIViewController {
    
    @IBOutlet weak var bulbImageView: UIImageView!
    
    @IBOutlet weak var testSwitch: UISwitch!
    
    @IBAction func stateChanged(_ sender: UISwitch) {
        // 스위치의 현재 상태 확인
        bulbImageView.isHighlighted = sender.isOn
    }
    
    
    @IBAction func toggle(_ sender: Any) {
        // 애니매이션 적용
        testSwitch.setOn(!testSwitch.isOn, animated: true)
        // 이미지 업데이트
        stateChanged(testSwitch)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 스위치 초기화
        testSwitch.isOn = bulbImageView.isHighlighted
        
    }
}

