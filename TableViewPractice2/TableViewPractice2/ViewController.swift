//
//  ViewController.swift
//  TableViewPractice2
//
//  Created by NTS on 30/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = firstName[indexPath.row]
//        cell?.detailTextLabel?.text = lastName[indexPath.row]
//        return cell!
        
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.labelName.text = firstName[indexPath.row]
        cell.labelSurname.text = lastName[indexPath.row]
        cell.imageOutlet.image = imageArray[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: DetailViewController = self.storyboard?.instantiateViewController(identifier: "DetailViewController") as! DetailViewController
        detail.strLabel1 = firstName[indexPath.row]
        detail.strLabel2 = lastName[indexPath.row]
        detail.imageUI = imageArray[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            firstName.remove(at: indexPath.row)
            lastName.remove(at: indexPath.row)
            imageArray.remove(at: indexPath.row)
            tableViewOutlet.deleteRows(at: [indexPath], with: .fade)
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, 500, -25, 20)
        cell.layer.transform = transform
        UIView.animate(withDuration: 2) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    var firstName = ["Pradip", "Shreyash", "Disha", "Mona", "Suraj", "Pradip", "Shreyash", "Disha", "Mona", "Suraj"]
    var lastName = ["Khandare", "Jadhav", "Gujarathi", "Pawar", "Kokare", "Khandare", "Jadhav", "Gujarathi", "Pawar", "Kokare"]
    
    var imageArray = [
        
                      UIImage(imageLiteralResourceName: "1"),
                      UIImage(imageLiteralResourceName: "3"),
                      UIImage(imageLiteralResourceName: "2"),
                      UIImage(imageLiteralResourceName: "5"),
                      UIImage(imageLiteralResourceName: "4"),
                      UIImage(imageLiteralResourceName: "1"),
                      UIImage(imageLiteralResourceName: "3"),
                      UIImage(imageLiteralResourceName: "2"),
                      UIImage(imageLiteralResourceName: "5"),
                      UIImage(imageLiteralResourceName: "4")
                      
                    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

