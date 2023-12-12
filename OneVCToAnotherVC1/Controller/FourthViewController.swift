//
//  FourthViewController.swift
//  OneVCToAnotherVC1
//
//  Created by NTS on 20/11/23.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    @IBAction func secondButtonPressed(_ sender: UIButton) {
        if let svc = navigationController?.viewControllers[1] {
            navigationController?.popToViewController(svc, animated: true)
        }
    }
    
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func fifthButtonPressed(_ sender: UIButton) {
        let fifthVC = self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        self.navigationController?.pushViewController(fifthVC, animated: true)
    }
    
}
