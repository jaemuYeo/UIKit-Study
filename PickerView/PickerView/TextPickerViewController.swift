//
//  ViewController.swift
//  PickerView
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class TextPickerViewController: UIViewController {
    
    let studyMember = ["레나", "제임스", "아이리스", "스탯"]
    let City = ["seoul", "Daegu", "Gangneung", "Suwon"]

    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBAction func report(_ sender: Any) {
        
        let firstSelectedRow = picker.selectedRow(inComponent: 0)
        let secondSelectedRow = picker.selectedRow(inComponent: 1)
        
        if firstSelectedRow >= 0 {
            print(studyMember[firstSelectedRow])
        }
        if secondSelectedRow >= 0 {
            print(City[secondSelectedRow])
        }
        
//        let row = picker.selectedRow(inComponent: 0)
//
//        guard row >= 0 else {
//            print("not found")
//            return
//        }
//        print(studyMember[row])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension TextPickerViewController: UIPickerViewDataSource {
    // 컴퍼넌트의 수를 리턴
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    // 해당 배열의 수를 리턴
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // 컴퍼넌트의 인덱스는 component 파라미터로 전달된다.
        switch component {
        case 0:
            return studyMember.count
        case 1:
            return City.count
        default:
            return 0
        }
    }
}

extension TextPickerViewController: UIPickerViewDelegate {
    // 피커뷰에 문자열을 출력하는 메서드
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            return studyMember[row]
        case 1:
            return City[row]
        default:
            return nil
        }
    }
    // 항목을 선택할 때마다 반복적으로 호출하는 메서드
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(studyMember[row])
        switch component {
        case 0:
            print(studyMember[row])
        case 1:
            print(City[row])
        default:
            break
        }
    }
}
