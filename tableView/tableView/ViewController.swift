//
//  ViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class ViewController: UIViewController {
    
    let list = ["study", "member"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDataSource {
    

    // 섹션내에 표시할 셀 숫자를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "switch", for: indexPath)
        
        cell.textLabel?.text = list[indexPath.row]
        
        return cell
    }
    
    
}

