//
//  ViewController.swift
//  PassingDataFromOneVCToAnother
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func continueButtonPressed(_ sender: UIButton) {
        let sec: SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        sec.strName = nameTextField.text
        sec.strEmail = emailTextField.text
        
        self.navigationController?.pushViewController(sec, animated: true)
        
    }
    
}

