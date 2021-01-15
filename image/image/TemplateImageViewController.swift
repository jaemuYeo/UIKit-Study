//
//  TemplateImageViewController.swift
//  image
//
//  Created by 잼킹 on 2021/01/14.
//

import UIKit

class TemplateImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let img = UIImage(named: "twitter")?.withRenderingMode(.alwaysTemplate) {
            imageView.image = img
        }
    }
    

}
