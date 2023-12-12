//
//  ViewController.swift
//  Collection
//
//  Created by NTS on 14/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    
    

    @IBOutlet weak var table: UITableView!
    
    struct Sunset {
        
        let title : String
        let imageName : String
    }
    let data: [Sunset] = [
        Sunset(title: "first pic", imageName: "sunset1"),
        Sunset(title: "second pic", imageName: "sunset2"),
        Sunset(title: "third pic", imageName: "sunset3"),
        Sunset(title: "fourth pic", imageName: "sunset4"),
        Sunset(title: "fifth pic", imageName: "sunset5")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let sunset = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! customTableViewCell
        cell.label.text = sunset.title
        cell.iconImage.image = UIImage(named: sunset.imageName)
        return cell
    }


}

