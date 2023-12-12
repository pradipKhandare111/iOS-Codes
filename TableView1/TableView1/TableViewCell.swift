//
//  TableViewCell.swift
//  TableView1
//
//  Created by NTS on 21/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var numberOutlet: UILabel!
    @IBOutlet weak var imageOutlet: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
