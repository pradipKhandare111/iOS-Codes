//
//  SecondViewController.swift
//  PassingDataFromOneVCToAnother
//
//  Created by NTS on 25/09/23.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var labelName: UILabel!
    
    @IBOutlet var labelEmail: UILabel!
    
    var strName: String! = nil
    var strEmail: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        labelName.text = strName
        labelEmail.text = strEmail
        
    }
    
    
}
