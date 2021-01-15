//
//  ViewController.swift
//  TextField
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Placeholder 지정
        inputField.placeholder = "입력해주세요."
    }
    
    
    @IBAction func report(_ sender: Any) {
        // 속성에 저장된 값을 바인딩 후 문자열의 길이를 확인
        guard let input = inputField.text, input.count > 0 else {
            return
        }
        // 바인딩 된 문자를 Label에 표시
        valueLabel.text = input
        
        
    }
    
}

