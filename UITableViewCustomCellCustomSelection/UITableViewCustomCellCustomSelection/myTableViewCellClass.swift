//
//  myTableViewCellClass.swift
//  UITableViewCustomCellCustomSelection
//
//  Created by NTS on 15/09/23.
//

import UIKit

class myTableViewCellClass: UITableViewCell {

    @IBOutlet weak var miImage: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isCheck = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
