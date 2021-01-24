//
//  NavViewController.swift
//  ThisWeekStudy
//
//  Created by 잼킹 on 2021/01/23.
//

import UIKit

class NavViewController: UINavigationController {

    let imgBackArrow = UIImage(systemName: "arrow.backward")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        navigationController?.navigationBar.backIndicatorImage = imgBackArrow
        navigationController?.navigationBar.backIndicatorTransitionMaskImage = imgBackArrow

        navigationItem.leftItemsSupplementBackButton = true
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
