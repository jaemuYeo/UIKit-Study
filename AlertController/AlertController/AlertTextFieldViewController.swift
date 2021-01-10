//
//  AlertTextFieldViewController.swift
//  AlertController
//
//  Created by 잼킹 on 2021/01/10.
//

import UIKit

class AlertTextFieldViewController: UIViewController {

    @IBOutlet weak var idTextField: UILabel!
    @IBOutlet weak var passwordTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func alert(_ sender: Any) {
        let controller = UIAlertController(title: "로그인 화면 구현", message: nil, preferredStyle: .alert)
        
        controller.addTextField { (idField) in
            idField.placeholder = "ID"
        }
        
        controller.addTextField { (passowrdField) in
            passowrdField.placeholder = "Password"
            passowrdField.isSecureTextEntry = true
        }
        
        let okAction = UIAlertAction(title: "로그인", style: .default) { [weak self] (action) in
            if let fieldList = controller.textFields {
                if let idField = fieldList.first {
                    self?.idTextField.text = idField.text
                }
                
                if let passwordField = fieldList.last {
                    self?.passwordTextField.text = passwordField.text
                }
            }
        }
        controller.addAction(okAction)
        
        let cancleAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        controller.addAction(cancleAction)
        
        present(controller, animated: true, completion: nil)
    }
    
}
