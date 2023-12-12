//
//  MyTableViewCell.swift
//  TableViewPractice3
//
//  Created by NTS on 30/10/23.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    @IBOutlet weak var labdelIphone: UILabel!
    @IBOutlet weak var imageIphone: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
