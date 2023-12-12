//
//  myTableViewCell.swift
//  CustomMultipleSelectionTableView
//
//  Created by NTS on 15/09/23.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet var myImage: UIImageView!
    
    @IBOutlet var myLabel: UILabel!
    
    var isChecked = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
