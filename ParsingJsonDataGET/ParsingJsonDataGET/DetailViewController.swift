//
//  DetailViewController.swift
//  ParsingJsonDataGET
//
//  Created by NTS on 23/11/23.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titlelabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    
    
    var strId: String = ""
    var strUserid: String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlelabel.text = strId
        bodyLabel.text = strUserid
       
    }
}
