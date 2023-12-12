//
//  SecondViewController.swift
//  UINavigationController1
//
//  Created by NTS on 22/11/23.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func secondBtn(_ sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
        //self.navigationController?.popViewController(animated: true)
        
        let thirdVC = self.storyboard?.instantiateViewController(identifier: "ThirdViewController") as! ThirdViewController
        
        
      //  self.present(thirdVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(thirdVC, animated: true)
        
    }
    
}
