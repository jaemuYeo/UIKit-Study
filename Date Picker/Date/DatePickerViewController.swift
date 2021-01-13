//
//  ViewController.swift
//  Date
//
//  Created by 잼킹 on 2021/01/13.
//

import UIKit

class DatePickerViewController: UIViewController {
    
    @IBOutlet weak var Picker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Mode
        Picker.datePickerMode = .dateAndTime
        // Locale 한국Locale는 "ko_KR"
        Picker.locale = Locale(identifier: "ko_KR")
        // Interval - 항목 사이의 간격 (최대 30분)
        Picker.minuteInterval = 1
        // Date의 기본값은 현재날짜와 시간 (선택된 날짜를 확인할 때에도 사용)
        Picker.date = Date()
        // 날짜를 선택할 때 애니메이션 효과를 설정 - setDate(animated:)
        Picker.setDate(Date(), animated: true)
        
        // 선택 범위 설정
        // 최소값 - maximumDate의 이전값.
//        Picker.minimumDate
        // 최대값
//        Picker.maximumDate
        
        // countDownTimer로 설정되어 있을시 설정
        // 시작값을 초단위로 설정함. 화면에는 분단위로 표시되기 때문에 60의 배수로 설정.
//        Picker.countDownDuration = 60
        
//        calendar 속성과 TimeZone 속성은 코드로만 작성가능
//        Picker.calendar
//        Picker.timeZone
        
    }
    // datePicker는 valueChanged 이벤트 사용 (Target-Action)
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print(sender.date) // 콘솔에 선택한 날짜 표시
    }
    
}

