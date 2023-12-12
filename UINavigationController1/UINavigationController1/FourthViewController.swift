//
//  FourthViewController.swift
//  UINavigationController1
//
//  Created by NTS on 22/11/23.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func fourthBtn(_ sender: UIButton) {
        let fifthVC =  self.storyboard?.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        self.navigationController?.pushViewController(fifthVC, animated: true)
        
        
       // self.present(fifthVC, animated: true, completion: nil)
    }
    
}
