//
//  ViewController.swift
//  Page Control
//
//  Created by 잼킹 on 2021/01/08.
//

import UIKit

class ViewController: UIViewController {
    
    var images = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
    
    @IBOutlet weak var collection: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // page control의 전체 페이지를 images 배열의 값으로 구현
        pageControl.numberOfPages = images.count
        // page control 현재 페이지 설정
        pageControl.currentPage = 0
        // page control 색상 표시 ( 기본값이 하얀색이라 안보임 )
        pageControl.pageIndicatorTintColor = UIColor.systemGray3
        // page control의 선택된 페이지 색상 설정
        pageControl.currentPageIndicatorTintColor = UIColor.orange
        collection.image = UIImage(named: images[0])
    }
    
    // 페이지가 변할 때 호출
    @IBAction func pageChanged(_ sender: UIPageControl) {
        // images 배열에서 page control이 선택된 페이지에 해당하는 이미지를 collection에 할당
        collection.image = UIImage(named: images[pageControl.currentPage])
    }
    
}

