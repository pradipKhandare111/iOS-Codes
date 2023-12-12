//
//  TableViewCell.swift
//  TableViewPractice
//
//  Created by NTS on 30/10/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    
    @IBOutlet weak var labelUpperCase: UILabel!
    @IBOutlet weak var labelLowerCase: UILabel!
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
