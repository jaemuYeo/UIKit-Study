//
//  ViewController.swift
//  imageVIew
//
//  Created by 잼킹 on 2021/01/14.
//

import UIKit

class AnimationViewController: UIViewController {
    
    let images = [
        UIImage(systemName: "speaker")!,
        UIImage(systemName: "speaker.1")!,
        UIImage(systemName: "speaker.2")!,
        UIImage(systemName: "speaker.3")!,
    ]
    
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.animationImages = images
        
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 5
    }
    
    @IBAction func startAnimation(_ sender: Any) {
        imageView.startAnimating()
    }
    
    @IBAction func stopAnimation(_ sender: Any) {
        if imageView.isAnimating {
            imageView.stopAnimating()
        }
    }


}

