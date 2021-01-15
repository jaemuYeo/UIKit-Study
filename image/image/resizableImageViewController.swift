//
//  resizableImageViewController.swift
//  image
//
//  Created by 잼킹 on 2021/01/14.
//

import UIKit

class resizableImageViewController: UIViewController {
    
    @IBOutlet weak var btn: UIButton!
    
    let btnImage = UIImage(named: "instagram")

    override func viewDidLoad() {
        super.viewDidLoad()

        if let img = btnImage {
            let capInset = UIEdgeInsets(top: 14, left: 14, bottom: 14, right: 14)
            
            let bkgImage = img.resizableImage(withCapInsets: capInset,resizingMode: .stretch)
            btn.setBackgroundImage(bkgImage, for: .normal)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
