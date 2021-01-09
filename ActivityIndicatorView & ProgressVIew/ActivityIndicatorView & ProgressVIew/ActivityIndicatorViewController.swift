//
//  ViewController.swift
//  ActivityIndicatorView & ProgressVIew
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class ActivityIndicatorViewController: UIViewController {
    
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBOutlet weak var hiddenSwitch: UISwitch!
    
    @IBAction func toggleHidden(_ sender: UISwitch) {
        loader.hidesWhenStopped = sender.isOn
    }
    
    @IBAction func start(_ sender: Any) {
        if !loader.isAnimating {
            loader.startAnimating()
        }
    }
    
    @IBAction func stop(_ sender: Any) {
        if loader.isAnimating {
            loader.stopAnimating()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 초기화 코드
        hiddenSwitch.isOn = loader.hidesWhenStopped
        loader.startAnimating()
        
    }
}

