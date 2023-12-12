//
//  ViewController.swift
//  PropertyObserver
//
//  Created by NTS on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let tableView  = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main
            .bounds.height))
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(tableView)
        tableView.register(UITableView.self, forCellReuseIdentifier: "cell")
    }


}

