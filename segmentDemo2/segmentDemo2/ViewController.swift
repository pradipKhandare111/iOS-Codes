//
//  ViewController.swift
//  segmentDemo2
//
//  Created by NTS on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        
        if segment.selectedSegmentIndex == 0 {
            label.text = "Animal 1 selected"
            image.image = UIImage(imageLiteralResourceName: "animal1")
            
        } else if segment.selectedSegmentIndex == 1 {
            label.text = "Animal 2 selected"
            image.image = UIImage(imageLiteralResourceName: "animal2")
            
        } else if segment.selectedSegmentIndex == 2 {
            label.text = "Animal 3 selected"
            image.image = UIImage(imageLiteralResourceName: "animal3")
            
        } else if segment.selectedSegmentIndex == 3 {
            label.text = "Animal 4 selected"
            image.image = UIImage(imageLiteralResourceName: "animal4")
            
        } else {
            label.text = "Select animal from the list."
        }
        
    }
    

}

