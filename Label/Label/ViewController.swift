//
//  ViewController.swift
//  Label
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var singleLabel: UILabel!
    @IBOutlet weak var multiLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Label 색상 변경
        singleLabel.textColor = UIColor.systemOrange
        // Label 정렬
        singleLabel.textAlignment = .center
        // Label 폰트크기
        let newFont = singleLabel.font.withSize(20)
        singleLabel.font = newFont
        
        // lineBreak 설정
        multiLabel.lineBreakMode = .byWordWrapping
        // 라인 수 설정
        multiLabel.numberOfLines = 0
        // AutoShrink 설정
        multiLabel.minimumScaleFactor = 0.5
        multiLabel.adjustsFontSizeToFitWidth = true
        
    }


}

