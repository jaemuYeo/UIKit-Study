//
//  FirstViewController.swift
//  Transition
//
//  Created by 잼킹 on 2021/02/07.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var instaView: UIView!
    @IBOutlet weak var twitterView: UIView!
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var instaView1: UIView!
    @IBOutlet weak var twitterView1: UIView!
    
    
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var instaView2: UIView!
    @IBOutlet weak var twitterView2: UIView!
    
    @IBOutlet weak var containerView3: UIView!
    @IBOutlet weak var instaView3: UIView!
    @IBOutlet weak var twitterView3: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func startTransition(_ sender: Any) {
        UIView.transition(with: containerView, duration: 1, options: .transitionFlipFromLeft, animations: {
            self.instaView.isHidden = !self.instaView.isHidden
            self.twitterView.isHidden = !self.instaView.isHidden
        }, completion: nil)
        
        UIView.transition(with: containerView1, duration: 1, options: .transitionFlipFromRight, animations: {
            self.instaView1.isHidden = !self.instaView1.isHidden
            self.twitterView1.isHidden = !self.instaView1.isHidden
        }, completion: nil)
        
        UIView.transition(with: containerView2, duration: 1, options: .transitionFlipFromTop, animations: {
            self.instaView2.isHidden = !self.instaView2.isHidden
            self.twitterView2.isHidden = !self.instaView2.isHidden
        }, completion: nil)
        
        UIView.transition(with: containerView3, duration: 1, options: .transitionFlipFromBottom, animations: {
            self.instaView3.isHidden = !self.instaView3.isHidden
            self.twitterView3.isHidden = !self.instaView3.isHidden
        }, completion: nil)
    }
    

}
