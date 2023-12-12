//
//  ViewController.swift
//  TableViewPractice3
//
//  Created by NTS on 30/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.labdelIphone.text = phoneName[indexPath.row]
        cell.imageIphone.image = phoneImages[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        details.strLabel = phoneName[indexPath.row]
        details.imageUI = phoneImages[indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            phoneName.remove(at: indexPath.row)
            phoneImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, 250, 25, 0)
        cell.layer.transform = transform
        
        UIView.animate(withDuration: 2) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
        }
    }
    
    
    var phoneName = ["iphone-8-plus", "iphone-12-pro", "iphone-13-pro-max", "iphone-13-pro", "iphone-14", "iphone-8-plus", "iphone-12-pro", "iphone-13-pro-max", "iphone-13-pro", "iphone-14", "iphone-8-plus", "iphone-12-pro", "iphone-13-pro-max", "iphone-13-pro", "iphone-14"]
    var phoneImages = [UIImage(imageLiteralResourceName: "iphone-8-plus"),
                       UIImage(imageLiteralResourceName: "iphone-12-pro"),
                       UIImage(imageLiteralResourceName: "iphone-13-pro-max"),
                       UIImage(imageLiteralResourceName: "iphone-13-pro"),
                       UIImage(imageLiteralResourceName: "iphone-14"),
                       UIImage(imageLiteralResourceName: "iphone-8-plus"),
                        UIImage(imageLiteralResourceName: "iphone-12-pro"),
                                          UIImage(imageLiteralResourceName: "iphone-13-pro-max"),
                                          UIImage(imageLiteralResourceName: "iphone-13-pro"),
                                          UIImage(imageLiteralResourceName: "iphone-14"),
                       UIImage(imageLiteralResourceName: "iphone-8-plus"),
                                          UIImage(imageLiteralResourceName: "iphone-12-pro"),
                                          UIImage(imageLiteralResourceName: "iphone-13-pro-max"),
                                          UIImage(imageLiteralResourceName: "iphone-13-pro"),
                                          UIImage(imageLiteralResourceName: "iphone-14")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

