//
//  ThirdViewController.swift
//  UINavigationController1
//
//  Created by NTS on 22/11/23.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func thirdBtn(_ sender: UIButton) {
        //self.dismiss(animated: true, completion: nil)
        
        let fourthVC = self.storyboard?.instantiateViewController(identifier: "FourthViewController") as! FourthViewController
        self.navigationController?.pushViewController(fourthVC, animated: true)
        
        // self.present(fourthVC, animated: true, completion: nil)
        
    }
    

}
