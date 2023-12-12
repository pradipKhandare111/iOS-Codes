//
//  SecondViewController.swift
//  PassingDataUsingNotificationCenter
//
//  Created by NTS on 26/10/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func facebookButtonPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .facebook, object: nil)
    }
    
    @IBAction func twitterButtonPressed(_ sender: UIButton) {
        NotificationCenter.default.post(name: .twitter, object: nil)
    }
    
    
}
