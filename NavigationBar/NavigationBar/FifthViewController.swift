//
//  FifthViewController.swift
//  NavigationBar
//
//  Created by 잼킹 on 2021/01/28.
//

import UIKit

class FifthViewController: UIViewController {
    // 루트뷰로 push
    @IBAction func popToRoot(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    // 세컨드뷰로 push
    @IBAction func popToSecond(_ sender: Any) {
        
        guard let secondVC = navigationController?.viewControllers.first(where: { $0 is SecondViewController }) else {
            return
        }
        
        navigationController?.popToViewController(secondVC, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

