//
//  ThirdViewController.swift
//  UINavigationController2
//
//  Created by NTS on 22/11/23.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func thirdBtnPressed(_ sender: UIButton) {
        if let home = self.navigationController?.viewControllers[0] {
            self.navigationController?.popToViewController(home, animated: true)
        }else {
            self.navigationController?.popViewController(animated: true)
        }
    }
    
}
