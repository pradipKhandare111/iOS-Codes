//
//  ViewController.swift
//  UINavigationController1
//
//  Created by NTS on 22/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     // Do any additional setup after loading the view.
    }


    @IBAction func firstBtn(_ sender: UIButton) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
      //  let nav = UINavigationController(rootViewController: secondVC)
        
      // self.present(secondVC, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}

