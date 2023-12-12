//
//  ViewController.swift
//  MVVM+JSON1
//
//  Created by NTS on 24/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModelUser = UserViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tableView.register(UINib(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "UserCell")
        viewModelUser.VC = self
       // viewModelUser.getAllUserData()
        viewModelUser.getallUserDataAF()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModelUser.arrayusers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as? UserCell
        
        let modelUser = viewModelUser.arrayusers[indexPath.row]
        if let id = modelUser.id {
            cell?.lblId.text = "\(id)"
        }else {
            cell?.lblId.text = "no id"
        }
        cell?.lblTitle.text = modelUser.title
        return cell!
    }
    
    
}
