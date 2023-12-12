//
//  TableViewCellCustomClass.swift
//  UITableViewMultipleSelectiionCustomCell
//
//  Created by NTS on 15/09/23.
//

import UIKit

class TableViewCellCustomClass: UITableViewCell {
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myImage: UIImageView!
    // @IBOutlet weak var myLabel: UILabel!
   // @IBOutlet weak var myImage: UIImageView!
    
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
