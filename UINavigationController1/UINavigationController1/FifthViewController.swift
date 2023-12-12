//
//  FifthViewController.swift
//  UINavigationController1
//
//  Created by NTS on 22/11/23.
//

import UIKit

class FifthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func fifthBtn(_ sender: UIButton) {
        
       // self.dismiss(animated: true)
        
      //  self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
//        let thirdVC = self.navigationController?.viewControllers[2] as! ThirdViewController
//        self.navigationController?.popToViewController(thirdVC, animated: true)
        
       // self.navigationController?.popToRootViewController(animated: true)
        
        
        if let thirdVC = self.navigationController?.viewControllers[2] {
            self.navigationController?.popToViewController(thirdVC, animated: true)
        }
        
        
    }
    
}
