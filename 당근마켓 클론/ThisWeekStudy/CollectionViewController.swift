//
//  CollectionViewController.swift
//  ThisWeekStudy
//
//  Created by 잼킹 on 2021/01/23.
//

import UIKit

class CollectionViewController: UIViewController {
    
    let sectionLabel = ["카테고리", "인기 검색어", "OO동 근처 인기매물", "잼킹님, 이건 어때요"]
    var categoryName = ["디지털/가전", "가구/인테리어", "유아동/유아도서", "생활/가공식품","스포츠/레저", "여성잡화", "여성의류", "남성패션/잡화", "게임/취미","뷰티/미용", "반료동물용품", "도서/티켓/음반", "식물", "기타 중고물품", "삽니다"]
    let hotItem = ["노트북", "의자", "자전거", "아이패드", "에어팟", "모니터", "책상"]
    
    @IBOutlet weak var listCollectionView: UICollectionView!
    @IBOutlet weak var segControl: UISegmentedControl!
    
    @IBAction func segmentedControlDidChange(_ sender: UISegmentedControl){
            segControl.changeUnderlinePosition()
        }
    
    @IBAction func popButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = listCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            
            // 오토 사이즈
            layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
            // 셀 여백
            layout.minimumInteritemSpacing = 0
            // 라인 여백
            layout.minimumLineSpacing = 5
            // 섹션 여백
            layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
            // 스티키헤더
            layout.sectionHeadersPinToVisibleBounds = true
            // 헤더 사이즈
            layout.headerReferenceSize = CGSize(width: 50, height: 50)
            
        }

        segControl.addUnderlineForSelectedSegment()
    }

}

extension CollectionViewController: UICollectionViewDataSource {
    // 섹션의 개수를 전달
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sectionLabel.count
    }
    // 섹션 header, footer 설정
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! HeaderCollectionReusableView
        
        header.sectionTitleLabel.text = sectionLabel[indexPath.section]
        
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 15
        case 1:
            return 7
        case 2:
            return 6
        case 3:
            return 20
        default:
            print(Error.self)
        }
        return section
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCollectionViewCell
        cell.imageView.image = UIImage(named: "당근")
        cell.productLabel?.text = categoryName[indexPath.count]
        
        return cell
    }
    
    
}
