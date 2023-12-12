//
//  ViewController.swift
//  switchDemo
//
//  Created by NTS on 23/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelSwitch: UILabel!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSwitch.isHidden = true
    }


    @IBAction func switchButtonPressed(_ sender: UISwitch) {
        if switchButton.isOn {
            labelSwitch.isHidden = false
            labelSwitch.text = "switch button is on"
            
        } else {
            labelSwitch.isHidden = false
            labelSwitch.text = "switch button is off"
            
        }
    }
}

