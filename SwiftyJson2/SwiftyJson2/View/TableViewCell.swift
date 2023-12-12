//
//  TableViewCell.swift
//  SwiftyJson2
//
//  Created by NTS on 09/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var body: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
