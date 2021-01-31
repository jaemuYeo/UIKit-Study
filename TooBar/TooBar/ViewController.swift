//
//  ViewController.swift
//  TooBar
//
//  Created by 잼킹 on 2021/01/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let flexibleSpaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let addItem = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: nil)
        let trashItem = UIBarButtonItem(barButtonSystemItem: .trash, target: nil, action: nil)
        
        setToolbarItems([flexibleSpaceItem, addItem, flexibleSpaceItem, trashItem, flexibleSpaceItem], animated: true)
    }


}


