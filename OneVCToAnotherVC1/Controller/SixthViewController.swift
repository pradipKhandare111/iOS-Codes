//
//  SixthViewController.swift
//  OneVCToAnotherVC1
//
//  Created by NTS on 20/11/23.
//

import UIKit

class SixthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        if let svc = navigationController?.viewControllers[1] {
            navigationController?.popToViewController(svc, animated: true)
        }
        
    }
    
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        if let tvc = navigationController?.viewControllers[2] {
            navigationController?.popToViewController(tvc, animated: true)
        }
        
    }
    
    
    @IBAction func fourthButtonPressed(_ sender: UIButton) {
        if let fvc = navigationController?.viewControllers[3] {
            navigationController?.popToViewController(fvc, animated: true)
        }
        
    }
    
    

}
