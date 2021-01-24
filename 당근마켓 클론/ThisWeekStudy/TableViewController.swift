//
//  ViewController.swift
//  ThisWeekStudy
//
//  Created by 잼킹 on 2021/01/23.
//

import UIKit

class TableViewController: UIViewController {
    
    let productNamed = ["아이패드 6세대 팔아요(s급)!!!", "가벼운 행거 팝니다.", "다이슨 무선청소기 새상품!", "에어팟 프로 미개봉 새상품 팔아요~~", "(무료나눔) 오리털 패딩"]
    let position = ["은평구 응암동", "마포구 공덕동", "은평구 증산동", "서대문구 북가좌동", "은평구 불광동"]
    let productPirce = ["60만원", "7천원", "27만원", "23만원", "무료나눔"]
    let productImage = [UIImage(named: "아이패드.png"), UIImage(named: "행거.png"), UIImage(named: "다이슨.png"), UIImage(named: "에어팟.png"), UIImage(named: "패딩.png")]
    
    @IBOutlet weak var listTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.separatorStyle = .singleLine
        listTableView.separatorInset = UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)

//        let celNib = UINib(nibName: "SharedCustomCell", bundle: nil)
//
//        listTableView.register(celNib, forCellReuseIdentifier: "SharedCustomCell")
        
    }

}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productNamed.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.clear
        
        cell.selectedBackgroundView = backgroundView
        
        cell.productImage.image = productImage[indexPath.row]
        cell.productName?.text = productNamed[indexPath.row]
        cell.uploadedPosition.text = position[indexPath.row]
        cell.price.text = productPirce[indexPath.row]
        
        return cell
    }
    
}
