//
//  DetailViewController.swift
//  TableViewPractice2
//
//  Created by NTS on 30/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    
    var strLabel1: String!
    var strLabel2: String!
    var imageUI: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.text = strLabel1
        label2.text = strLabel2
        imageOutlet.image = imageUI
    }
    
}
