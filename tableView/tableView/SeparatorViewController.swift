//
//  SeparatorViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class SeparatorViewController: UIViewController {
    
    let list = ["제임스", "레나", "아이리스", "스탯", "스터디", "맴버", "ios", "개발자"]
    
    @IBOutlet weak var listTableView: UITableView!
    
    override func viewDidLoad() {
       super.viewDidLoad()
    
        // separator 스타일, 컬러, 여백 기본 설정
        listTableView.separatorStyle = .singleLine
        listTableView.separatorColor = UIColor.orange
        listTableView.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        // fromCellEdges 속성으로인한 분기
        if #available(iOS 11.0, *) {
            listTableView.separatorInsetReference = .fromCellEdges
         } else {
             // Fallback on earlier versions
         }
    }
}

extension SeparatorViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
            
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = list[indexPath.row % list.count]
        
        // 두번 째 셀 여백설정
        if indexPath.row == 1 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 30, bottom: 0, right: 0)
        // 세번 째 여백 설정
        } else if indexPath.row == 2 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 30)
        // 기본 Inset으로 초기화
        } else {
            cell.separatorInset = listTableView.separatorInset
        }
             
        return cell
    }
 }
