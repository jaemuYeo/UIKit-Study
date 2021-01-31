//
//  ViewController.swift
//  TabBar
//
//  Created by 잼킹 on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 0)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBarItem.badgeValue = "HOT"
    }


}

