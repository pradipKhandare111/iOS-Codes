//
//  FifthViewController.swift
//  OneVCToAnotherVC1
//
//  Created by NTS on 20/11/23.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    
    @IBAction func homeButtonPressed(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        
        if let vc = navigationController?.viewControllers[2] {
            navigationController?.popToViewController(vc, animated: true)
        }
    }
    
    @IBAction func sixthButtonPressed(_ sender: UIButton) {
        
        let sixthVC = self.storyboard?.instantiateViewController(identifier: "SixthViewController") as! SixthViewController
        self.navigationController?.pushViewController(sixthVC, animated: true)
    }
}
