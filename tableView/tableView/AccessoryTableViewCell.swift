//
//  AccessoryTableViewCell.swift
//  tableView
//
//  Created by 잼킹 on 2021/01/20.
//

import UIKit

class AccessoryTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let v = UISwitch(frame: .zero)
        accessoryView = v
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


