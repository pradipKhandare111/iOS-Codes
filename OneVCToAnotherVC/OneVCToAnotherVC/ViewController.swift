//
//  ViewController.swift
//  OneVCToAnotherVC
//
//  Created by NTS on 20/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func detailVCButton(_ sender: UIButton) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "MyViewController") as! MyViewController
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
}

