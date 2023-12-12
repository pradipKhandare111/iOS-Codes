//
//  TableViewController.swift
//  SwiftyJson1
//
//  Created by NTS on 10/11/23.
//

import UIKit

class TableViewController: UITableViewController {
    
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var bodyLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var image: UIImageView!

    var modelData = JsonModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        idLabel.text = "ID = "+modelData.id
        bodyLabel.text = "Body = "+modelData.body
        titleLabel.text = "Title = "+modelData.title
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }



}

