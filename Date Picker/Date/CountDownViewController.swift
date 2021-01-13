//
//  CountDownViewController.swift
//  Date
//
//  Created by 잼킹 on 2021/01/13.
//

import UIKit
import AudioToolbox

class CountDownViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var picker: UIDatePicker!
    
    var remainingSeconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        picker.countDownDuration = 60
        
    }
    
    @IBAction func startButton(_ sender: Any) {
        // picker에서 선택 된 값을 label에 표시
        timeLabel.text = "\(Int(picker.countDownDuration))"
        // count down에서 선택한 값으로 설정
        remainingSeconds = Int(picker.countDownDuration)
        // 반복할 코드를 구현
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.remainingSeconds -= 1
            self.timeLabel.text = "\(self.remainingSeconds)"
          
            if self.remainingSeconds == 0 {
                timer.invalidate()
                AudioServicesPlaySystemSound(1315)
            }
        }
    }
    
}
