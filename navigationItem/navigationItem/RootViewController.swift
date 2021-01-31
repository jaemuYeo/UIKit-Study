//
//  ViewController.swift
//  navigationItem
//
//  Created by 잼킹 on 2021/01/29.
//

import UIKit

class RootViewController: UIViewController {
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        switch sender.isOn {
        // switch가 on 일때 barButtonItem 표시
        case true:
            navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
            
            if var list = navigationItem.rightBarButtonItems {
                let btn = UIBarButtonItem(title: "Item", style: .plain, target: nil, action: nil)
                // 배열 마지막 부분에 버튼 추가
                list.append(btn)
                // rightBarButtonItem에 새로운 배열 추가
                navigationItem.rightBarButtonItems = list
            }
        // off 일 때 barButtonItem 제거
        case false:
            navigationItem.leftBarButtonItem = nil
            
            // switch 버튼을 제외한 나머지버튼 제거
            let list = navigationItem.rightBarButtonItems?.dropLast()
            // 새로운 배열 저장
            navigationItem.rightBarButtonItems = Array(list!)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

