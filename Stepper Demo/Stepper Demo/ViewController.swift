//
//  ViewController.swift
//  Stepper Demo
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func valueChange(_ sender: UIStepper) {
        lbl.text = Int (sender.value).description
    }
    
}

