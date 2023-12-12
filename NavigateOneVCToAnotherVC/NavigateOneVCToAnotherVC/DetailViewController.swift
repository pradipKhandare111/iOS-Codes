//
//  DetailViewController.swift
//  NavigateOneVCToAnotherVC
//
//  Created by NTS on 25/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func HomeButtonPressed(_ sender: UIButton) {
//        let VC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
//        self.navigationController?.pushViewController(VC, animated: true)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func ThirdVCButtonPressed(_ sender: UIButton) {
        let thirdVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as! ThirdViewController
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
}
