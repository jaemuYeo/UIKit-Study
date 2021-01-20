//
//  SelfSizingViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class SelfSizingViewController: UIViewController {
    
    @IBOutlet weak var listTableView: UITableView!
    
    let list = [("동해물과 백두산이 마르고 닳도록 하느님이 보우하사 우리나라만세","1절"), ("무궁화 삼천리 화라강산 대한사람 대한으로 길이보전하세","1절 후렴"), ("남산 위에 저 소나무 철갑을 두른듯 바람서리 불변함은 우리 기상일세", "2절"), ("무궁화 삼천리 화려강산 대한사람 대한으로 길이보전하세", "2절 후렴"), ("2020년은 코로나 때문에 온 국민이 힘든 한 해였어요","작년은,,"), ("2021년은 모두 행복한 일만 있기를 바래요", "희망사항")]

    override func viewDidLoad() {
        super.viewDidLoad()

    }
        
}

extension SelfSizingViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let target = list[indexPath.row]
        cell.textLabel?.text = target.0
        cell.detailTextLabel?.text = target.1
        return cell
    }
    
}

extension SelfSizingViewController: UITableViewDelegate {
    // 셀의 높이를 지정해주는 메서드
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        // 첫번째 셀은 100으로 고정하고 나머지는 자동으로 계산
        if indexPath.row == 0 {
            return 100
        }
        
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100
        }
        
        return UITableView.automaticDimension
    }
}
