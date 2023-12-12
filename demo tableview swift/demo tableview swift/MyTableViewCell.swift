//
//  MyTableViewCell.swift
//  demo tableview swift
//
//  Created by NTS on 25/09/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var myLabelOne: UILabel!
    
    @IBOutlet var myLabelTwo: UILabel!
    
    @IBOutlet var myImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
