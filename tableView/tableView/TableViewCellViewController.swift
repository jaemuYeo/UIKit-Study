//
//  TableViewCellViewController.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class TableViewCellViewController: UIViewController {

    @IBOutlet weak var listTableView: UITableView!
    
    let list = ["제임스", "레나", "아이리스", "스탯", "스터디", "맴버", "ios", "개발자"]
   
    override func viewDidLoad() {
    super.viewDidLoad()
      
        
    }
    // 셀을 선택한 상태에서 새로운화면으로 전환되기 직전에 호출
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // sender로 저장된 파라미터를 UITableViewCell로 타입캐스팅
        if let cell = sender as? UITableViewCell {
            // 셀을 파라미터로 받아서 해당 셀의 indexPath를 옵셔널로 리턴
            if let indexPath = listTableView.indexPath(for: cell) {
                // DetailViewController로 데이터를 전달
                if let vc = segue.destination as? DetailViewController {
                    vc.value = list[indexPath.row]
                }
            }
        }
    }
}


extension TableViewCellViewController: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return list.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    //textLabel속성을 통해 Label에 접근 후 텍스트를 설정
    cell.textLabel?.text = list[indexPath.row]
    // imageView에 접근 후 이미지를 설정
    cell.imageView?.image = UIImage(named: "apple")
    return cell
   }
}


extension TableViewCellViewController: UITableViewDelegate {
    // 셀을 선택할 때마다 호출
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    // 지정 된 위치에 있는 셀에 접근 후 콘솔에 해당 Label의 텍스트 출력
    if let cell = tableView.cellForRow(at: indexPath) {
        print(cell.textLabel?.text)
    }
   }
    // tableView가 특정 행에 대한 셀을 그리려고한다는 것을 Delegate에 알림
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        // 짝수 인덱스 셀에 접근해서 배경색을 바꿈
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
        } else {
            cell.backgroundColor = UIColor.white
        }
        
    }
}
