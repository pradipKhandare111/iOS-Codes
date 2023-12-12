//
//  ViewController.swift
//  dynamic form demo
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        managedTextField()
    }

    func managedTextField() {
        let myField:UITextField = UITextField(frame: CGRect(x: 23, y: 16, width: 340, height: 30))
        myField.borderStyle = .roundedRect
        self.view.addSubview(myField)
    }

}

