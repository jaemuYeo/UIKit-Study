//
//  AccessoryViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class AccessoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

}

extension AccessoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // accessoryType을 통해 속성 지정
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Disclosure Indicator"
            cell.accessoryType = .disclosureIndicator
        case 1:
            cell.textLabel?.text = "Detail Button"
            cell.accessoryType = .detailButton
        case 2:
            cell.textLabel?.text = "Detail Disclosure Button"
            cell.accessoryType = .detailDisclosureButton
        case 3:
            cell.textLabel?.text = "Checkmark"
            cell.accessoryType = .checkmark
        case 4:
            return tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath)
        default:
            cell.textLabel?.text = "None"
            cell.accessoryType = .none
        }
        
        return cell
    }
}


extension AccessoryViewController: UITableViewDelegate {
    // 셀을 선택했을 때 호출
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // cell 터치시 pushSegeu 실행
        performSegue(withIdentifier: "pushSegue", sender: nil)
    }
    // 디테일 버튼을 터치했을 때 호출
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        // 디테일 버튼 터시치 modalSegue 실행
        performSegue(withIdentifier: "modalSegue", sender: nil)
    }
}
