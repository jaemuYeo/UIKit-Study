//
//  ViewController.swift
//  image
//
//  Created by 잼킹 on 2021/01/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageVIew: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let img = UIImage(named: "apple")
        
        imageVIew.image = img
        
        if let ptSize = img?.size {
            print("Image Size: \(ptSize)")
        }
        
        if let ptSize = img?.size, let scale = img?.scale {
            let px = CGSize(width: ptSize.width * scale, height: ptSize.height * scale)
            print("Image Size(px): \(px)")
        }
        
        let pngData = img?.pngData()
        let jpgDate = img?.jpegData(compressionQuality: 1.0)
    }

}

