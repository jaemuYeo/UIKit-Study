//
//  SecondViewController.swift
//  Transition
//
//  Created by 잼킹 on 2021/02/07.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var instaView: UIView!
    @IBOutlet weak var twitterView: UIView!
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var instaView1: UIView!
    @IBOutlet weak var twitterView1: UIView!
    
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var instaView2: UIView!
    @IBOutlet weak var twitterView2: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startButton(_ sender: Any) {
        UIView.transition(with: containerView, duration: 1, options: .transitionCurlUp, animations: {
            self.instaView.isHidden = !self.instaView.isHidden
            self.twitterView.isHidden = !self.instaView.isHidden
        }, completion: nil)
        
        UIView.transition(with: containerView1, duration: 1, options: .transitionCurlDown, animations: {
            self.instaView1.isHidden = !self.instaView1.isHidden
            self.twitterView1.isHidden = !self.instaView1.isHidden
        }, completion: nil)
        
        UIView.transition(with: containerView2, duration: 1, options: .transitionCrossDissolve, animations: {
            self.instaView2.isHidden = !self.instaView2.isHidden
            self.twitterView2.isHidden = !self.instaView2.isHidden
        }, completion: nil)
    }

}
