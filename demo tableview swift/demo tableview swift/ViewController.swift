//
//  ViewController.swift
//  demo tableview swift
//
//  Created by NTS on 25/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var myTableView: UITableView!
    
    
    var array1 = ["SUNSET1","SUNSET2", "SUNSET3", "SUNSET4", "SUNSET5"]
    var array2 = ["sunset11", "sunset22", "sunset33", "sunset44", "sunset55"]
    
    var imageArray = ["sunset1", "sunset2", "sunset3", "sunset4", "sunset5"]
    
    var img =
    [
        UIImage(imageLiteralResourceName: "sunset1"),
        UIImage(imageLiteralResourceName: "sunset2"),
        UIImage(imageLiteralResourceName: "sunset3"),
        UIImage(imageLiteralResourceName: "sunset4"),
        UIImage(imageLiteralResourceName: "sunset5")
    ]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = array1[indexPath.row]
//        cell?.detailTextLabel?.text = array2[indexPath.row]
//        return cell!
        let cell:MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.myLabelOne.text = array1[indexPath.row]
        cell.myLabelTwo.text = array2[indexPath.row]
        cell.myImageView.image = img[indexPath.row]
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // self.view.backgroundColor = UIColor.red
        let detail : DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        detail.strlbl1 = array1[indexPath.row]
        detail.strlbl2 = array2[indexPath.row]
        detail.strimg = img[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            img.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

