//
//  ViewController.swift
//  textDelegate
//
//  Created by 잼킹 on 2021/01/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBOutlet weak var genderField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    lazy var charSet = CharacterSet(charactersIn: "0123456789").inverted
    lazy var invalidGenderCharSet = CharacterSet(charactersIn: "MF").inverted
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // 화면에 진입하면 첫번째 텍스트 필드를 FirstResponder로 지정
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        nameField.becomeFirstResponder()
    }
}

extension ViewController: UITextFieldDelegate {
    // ture를 리턴하면 편집상태가 종료
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField == emailField {
            let regex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            
            // 문자열에 정규식 패턴이 존재하지않으면 알럿 띄우기 (편집이 종료되기 직전)
            guard let email = emailField.text, let _ = email.range(of: regex,options: .regularExpression) else {
                alert(message: "invalid email")
                
                return false
            }
        }
        return true
    }
    
    // 텍스트를 호출할 때 마다 반복적으로 실행
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        // 옵셔널 String을 NSString으로 타입캐스팅
        guard let currentText = textField.text as NSString? else {
            return true
        }
        // 범위를 정하고 String을 전달
        let finalText = currentText.replacingCharacters(in: range, with: string)
        
        switch textField {
        // 10을 초과하면 입력 금지
        case nameField:
            if finalText.count > 10 {
                return false
            }
        // 문자열을 숫자로 바꾸고 1미만이거나 100을 초과하면 false
        case ageField:
            // 세번째 파라미터로 전달 된 문자열에 CharacterSet에 포함된 문자가 존재하는지 확인
            if let _ = string.rangeOfCharacter(from: charSet) {
                return false
            }
            
            if let age = Int(finalText), !(1...100).contains(age) {
                return false
            }
        // 글자 입력수를 1로 제한하고, M과 F만 입력가능하게 제한
        case genderField:
            if finalText.count > 1 {
                return false
            }
            // invalidGenderCharSet에 존재하는 문자가 포함되어있으면 false리턴
            if let _ = string.rangeOfCharacter(from: invalidGenderCharSet) {
                return false
            }
        default:
            break
        }
        
        return true
    }
    
    // 리턴키를 터치하면 입력 포커스 이동
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // 첫번 째 파라미터로 각각의 델리게이트 지정
        switch textField {
        case nameField:
            ageField.becomeFirstResponder()
        case ageField:
            genderField.becomeFirstResponder()
        case genderField:
            emailField.becomeFirstResponder()
        case emailField:
            emailField.resignFirstResponder()
        default:
            break
        }
        return true
    }
}











extension ViewController {
    func alert(message: String) {
        let alert = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: nil)
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
