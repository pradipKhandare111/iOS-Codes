//
//  ViewController.swift
//  popupView
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func alertButtonPressed(_ sender: UIButton) {
        let alert = UIAlertController(title: "My Title Here", message: "This is my message", preferredStyle: .alert)
        present(alert, animated: true, completion: nil)
        
    }
    
   
    @IBAction func actionSheetButtonPressed(_ sender: UIButton) {
        
        let action = UIAlertController(title: "This is my title", message: "This is my message", preferredStyle: .actionSheet)
        present(action, animated: true, completion: nil)
        
    }
    
}

