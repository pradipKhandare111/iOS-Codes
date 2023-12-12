//
//  ViewController.swift
//  segdemo
//
//  Created by NTS on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var seg: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var sunsetImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        sunsetImage.isHidden = true
    }


    @IBAction func segmentSelected(_ sender: UISegmentedControl) {
        
        if seg.selectedSegmentIndex == 0 {
            label.isHidden = false
            sunsetImage.isHidden = false
            label.text = "sunset1"
            sunsetImage.image = UIImage(imageLiteralResourceName: "sunset1")
        } else if seg.selectedSegmentIndex == 1 {
            
            label.isHidden = false
            sunsetImage.isHidden = false
            label.text = "sunset2"
            sunsetImage.image = UIImage(imageLiteralResourceName: "sunset2")
        } else if seg.selectedSegmentIndex == 2 {
            
            label.isHidden = false
            sunsetImage.isHidden = false
            label.text = "sunset3"
            sunsetImage.image = UIImage(imageLiteralResourceName: "sunset3")
        } else if seg.selectedSegmentIndex == 3 {
            
            label.isHidden = false
            sunsetImage.isHidden = false
            label.text = "sunset4"
            sunsetImage.image = UIImage(imageLiteralResourceName: "sunset4")
        } else {
            label.text = "Select any segment from above"
        }
    }
}

