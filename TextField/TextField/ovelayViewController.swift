//
//  ovelayViewController.swift
//  TextField
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class ovelayViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        btn.setImage(#imageLiteral(resourceName: "Image"), for: .normal)
        
        inputField.leftView = btn
        inputField.leftViewMode = .always
        
    }
    

}
