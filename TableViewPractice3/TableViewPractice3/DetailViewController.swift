//
//  DetailViewController.swift
//  TableViewPractice3
//
//  Created by NTS on 30/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var labelOutlet: UILabel!
    
    var strLabel : String!
    var imageUI : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelOutlet.text = strLabel
        imageOutlet.image = imageUI
    
    }

}
