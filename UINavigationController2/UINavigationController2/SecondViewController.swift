//
//  SecondViewController.swift
//  UINavigationController2
//
//  Created by NTS on 22/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func secondBtnPressed(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
        
    }
    

}
