//
//  SecondViewController.swift
//  NavigationBar
//
//  Created by 잼킹 on 2021/01/28.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func pop(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func PushThird(_ sender: Any) {
        guard let ThirdVC = storyboard?.instantiateViewController(withIdentifier: "ThirdVC") else {
            return
        }
        navigationController?.pushViewController(ThirdVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }


}
