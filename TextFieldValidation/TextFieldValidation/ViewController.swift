//
//  ViewController.swift
//  TextFieldValidation
//
//  Created by NTS on 25/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        if (emailTextField.text?.isEmailValid)! {
            print("Your email id is valid")
        }else {
            print("Your email id is invalid")
        }
        
        if (passwordTextField.text?.isPasswordValid)! {
            print("Password is valid")
        } else {
            print("Password is invalid")
        }
        
        if(phoneTextField.text?.isPhoneNumber)! {
            print("Phone number is valid")
        }else {
            print("Phone number is invalid.")
        }
        
    }
    
}


extension String {
    var isPhoneNumber: Bool {
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: self, options: [], range: NSMakeRange(0, self.count))
            if let res = matches.first {
                return res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == self.count && self.count == 10
            }else {
                return false
            }
        }catch {
            return false
        }
    }
    
    var isPasswordValid:  Bool {
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[a-z])(?=.*[$@$#!%*?&])[A-Za-z\\d$@$#!%*?&]{8,}")
        return passwordTest.evaluate(with: self)
    }
    
    var isEmailValid: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}

