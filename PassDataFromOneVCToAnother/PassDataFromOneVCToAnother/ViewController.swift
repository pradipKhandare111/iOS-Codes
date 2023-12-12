//
//  ViewController.swift
//  PassDataFromOneVCToAnother
//
//  Created by NTS on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func continueButtonPressed(_ sender: UIButton) {
        let sec: SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        sec.strName = nameTextField.text
        sec.strEmail = emailTextField.text
        self.navigationController?.pushViewController(sec, animated: true)
    }
    
}

