//
//  ResizingImageViewController.swift
//  image
//
//  Created by 잼킹 on 2021/01/14.
//

import UIKit

class ResizingImageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 축소할 이미지와 축소할 크기를 선언
        if let targetImage = UIImage(named: "배경화면") {
            let size = CGSize(width: targetImage.size.width / 5, height: targetImage.size.height / 5)
            
            imageView.image = resizingWithImageContext(image: targetImage, to: size)
        }
    }

}




extension ResizingImageViewController {
    func resizingWithImageContext(image: UIImage, to size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)
        
        let frame = CGRect(origin: CGPoint.zero, size: size)
        image.draw(in: frame)
        
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()
        // context 해지
        UIGraphicsEndImageContext()
        // 결과
        return resultImage
    }
}



extension ResizingImageViewController {
    func resizingWithBitmapContext(image: UIImage, to size: CGSize) -> UIImage? {
        return nil
    }
}



