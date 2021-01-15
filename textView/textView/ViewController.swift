//
//  ViewController.swift
//  textView
//
//  Created by 잼킹 on 2021/01/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    let img = UIImage(named: "apple")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let attachment = NSTextAttachment()
        attachment.image = img
        
        // 이미지를 시작부분에 추가
        textView.textStorage.insert(NSAttributedString(attachment: attachment), at: 0)
        
    }


}

