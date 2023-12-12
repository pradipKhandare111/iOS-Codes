//
//  ViewController.swift
//  segmentDemo
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myImageView: UIImageView!
    
    @IBOutlet var mySegm: UISegmentedControl!
    
    @IBOutlet var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.isHidden = true
        myLabel.isHidden = true
    }
    
    @IBAction func segFunc(_ sender: UISegmentedControl) {
        
        if mySegm.selectedSegmentIndex == 0 {
            myImageView.isHidden = false
            myLabel.isHidden = false
            myLabel.text = "sunset1"
            myImageView.image = UIImage(imageLiteralResourceName: "sunset1")
            
        } else if mySegm.selectedSegmentIndex == 1 {
            myImageView.isHidden = false
            myLabel.isHidden = false
            myLabel.text = "sunset2"
            myImageView.image = UIImage(imageLiteralResourceName: "sunset2")
            
        } else if mySegm.selectedSegmentIndex == 2 {
            myImageView.isHidden = false
            myLabel.isHidden = false
            myLabel.text = "sunset3"
            myImageView.image = UIImage(imageLiteralResourceName: "sunset3")
            
        } else if mySegm.selectedSegmentIndex == 3 {
            myImageView.isHidden = false
            myLabel.isHidden = false
            myLabel.text = "sunset4"
            myImageView.image = UIImage(imageLiteralResourceName: "sunset4")
        }
        
    }
}
