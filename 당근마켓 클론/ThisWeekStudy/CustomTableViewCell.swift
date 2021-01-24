//
//  CustomTableViewCell.swift
//  ThisWeekStudy
//
//  Created by 잼킹 on 2021/01/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var uploadedPosition: UILabel!
    @IBOutlet weak var price: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
