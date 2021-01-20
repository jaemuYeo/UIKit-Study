//
//  DetailViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var valueLabel: UILabel!
    
    var value: String?
    
    override func viewDidLoad() {
       super.viewDidLoad()
       
       valueLabel.text = value
    }
 }
