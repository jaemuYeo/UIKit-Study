//
//  ProgressViewController.swift
//  ActivityIndicatorView & ProgressVIew
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class ProgressViewController: UIViewController {

    
    @IBOutlet weak var progress: UIProgressView!
    
    @IBAction func update(_ sender: Any) {
        // 업데이트 애니메이션 추가
        progress.setProgress(0.8, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()


        progress.progress = 0.0
        progress.trackTintColor = UIColor.systemGray
        progress.progressTintColor = UIColor.systemRed
    }
    


}
