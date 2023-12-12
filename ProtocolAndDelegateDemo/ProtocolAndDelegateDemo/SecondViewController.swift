//
//  SecondViewController.swift
//  ProtocolAndDelegateDemo
//
//  Created by NTS on 26/10/23.
//

import UIKit


class SecondViewController: UIViewController{
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        delegate.dataPassing(name: nameTextField.text!, address: addressTextField.text!, city: cityTextField.text!)
    }
    

}
