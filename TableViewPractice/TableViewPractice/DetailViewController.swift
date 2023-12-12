//
//  DetailViewController.swift
//  TableViewPractice
//
//  Created by NTS on 30/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var imageViewController: UIImageView!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    
    var strLbl1 : String!
    var strLbl2 : String!
    var strImg : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelOne.text = strLbl1
        labelTwo.text = strLbl2
        imageViewController.image = strImg
    }

}
