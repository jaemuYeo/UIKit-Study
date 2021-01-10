//
//  ViewController.swift
//  AlertController
//
//  Created by 잼킹 on 2021/01/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func alert(_ sender: Any) {
        let controller = UIAlertController(title: "알림", message: "알림을 확인했나요?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
            print(action.title)
        }
        controller.addAction(okAction)
        
        let cancleAction = UIAlertAction(title: "취소", style: .cancel) { (action) in
            print(action.title)
        }
        controller.addAction(cancleAction)
        
        let destructiveButton = UIAlertAction(title: "강조", style: .destructive) { (action) in
            print(action.title)
        }
        controller.addAction(destructiveButton)
        
        present(controller, animated: true, completion: nil)
    }
    
}

