//
//  ViewController.swift
//  NavigationBar
//
//  Created by 잼킹 on 2021/01/28.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBAction func pushSecond(_ sender: Any) {
        // 인스턴스를 생성
        guard let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") else {
            return
        }
        
        // 새로운 child생성을 위해 navigation controller에 접근
        navigationController?.pushViewController(secondVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

