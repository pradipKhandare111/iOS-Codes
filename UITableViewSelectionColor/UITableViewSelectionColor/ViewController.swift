//
//  ViewController.swift
//  UITableViewSelectionColor
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myTable: UITableView!
    
    var player = [
        "virat", "sachin", "pandya", "Ganguli", "raina", "dhoni", "kapil dev",
        "bhumra", "gavaskar", "harbhajan"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

}

extension ViewController: UITabBarDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return player.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = player[indexPath.row]
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.orange
        cell.selectedBackgroundView = backgroundView
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let selectedCell:UITableViewCell = myTable.cellForRow(at: indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.green

    }
}

