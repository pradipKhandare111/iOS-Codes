//
//  ViewController.swift
//  TableView1
//
//  Created by NTS on 21/11/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var name = ["1", "2", "3", "4", "5"]
    
    var img = [
                    UIImage(imageLiteralResourceName: "1"),
                    UIImage(imageLiteralResourceName: "2"),
                    UIImage(imageLiteralResourceName: "3"),
                    UIImage(imageLiteralResourceName: "4"),
                    UIImage(imageLiteralResourceName: "5"),
             ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.numberOutlet.text = name[indexPath.row]
        cell.imageOutlet.image = img[indexPath.row]
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}
