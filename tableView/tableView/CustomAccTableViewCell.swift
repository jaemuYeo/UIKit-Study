//
//  CustomAccTableViewCell.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class CustomAccTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let v = UIImageView(image: UIImage(named: "apple"))
        v.frame = CGRect(x: 20, y: 20, width: 40, height: 40)
        
        accessoryView = v
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
