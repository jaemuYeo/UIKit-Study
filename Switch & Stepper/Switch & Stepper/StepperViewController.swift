//
//  StepperViewController.swift
//  Switch & Stepper
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class StepperViewController: UIViewController {
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var valueStepper: UIStepper!
    @IBOutlet weak var autorepeatSwitch: UISwitch!
    @IBOutlet weak var continuousSwitch: UISwitch!
    @IBOutlet weak var wrapSwitch: UISwitch!
    
    
    @IBAction func valueChanged(_ sender: UIStepper) {
        // stepper의 현재갑 출력
        valueLabel.text = "\(sender.value)"
    }
    
    @IBAction func toggleAutorepeat(_ sender: UISwitch) {
        // switch의 on 적용
        valueStepper.autorepeat = sender.isOn
    }
    
    @IBAction func toggleContinuous(_ sender: UISwitch) {
        valueStepper.isContinuous = sender.isOn
    }
    
    @IBAction func toggleWrap(_ sender: UISwitch) {
        valueStepper.wraps = sender.isOn
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 모든 스위치를 스태퍼의 현재 속성으로 초기화
        autorepeatSwitch.isOn = valueStepper.autorepeat
        continuousSwitch.isOn = valueStepper.isContinuous
        wrapSwitch.isOn = valueStepper.wraps
        
    }
}
