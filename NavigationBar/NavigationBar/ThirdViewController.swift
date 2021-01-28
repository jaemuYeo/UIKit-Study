//
//  ThirdViewController.swift
//  NavigationBar
//
//  Created by 잼킹 on 2021/01/28.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBAction func pushFifth(_ sender: Any) {
        guard let fifthVC = storyboard?.instantiateViewController(withIdentifier: "FifthVC") else {
            return
        }
        navigationController?.pushViewController(fifthVC, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
