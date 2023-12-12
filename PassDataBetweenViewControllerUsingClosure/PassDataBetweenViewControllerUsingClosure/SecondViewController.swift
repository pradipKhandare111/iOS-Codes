//
//  SecondViewController.swift
//  PassDataBetweenViewControllerUsingClosure
//
//  Created by NTS on 26/10/23.
//

import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        let vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as! ViewController
        vc.completion = { dict in
            self.nameLabel.text = (dict["name"] as! String)
            self.passwordLabel.text = (dict["password"] as! String)
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
