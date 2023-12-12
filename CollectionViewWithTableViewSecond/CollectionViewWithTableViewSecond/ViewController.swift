//
//  ViewController.swift
//  CollectionViewWithTableViewSecond
//
//  Created by NTS on 18/09/23.
//

import UIKit

let eData = [
        Entertainment(sectionType: "sunset", imageGallary: ["sunset1", "sunset2", "sunset3", "sunset4", "sunset5"]),
        Entertainment(sectionType: "iphones", imageGallary: ["iphone-8-plus", "iphone-12-pro", "iphone-13-pro", "iphonr-13-pro-max", "iphone-14"]),
        Entertainment(sectionType: "shopping", imageGallary: ["shoes", "books", "electronics", "grocery", "kids", "mens", "kitchen"])
]

class ViewController: UIViewController {
    
    @IBOutlet var myTable: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        return cell
        
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .red
        
    }
    
    
}

