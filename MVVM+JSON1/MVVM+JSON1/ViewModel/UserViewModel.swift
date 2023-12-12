//
//  UserViewModel.swift
//  MVVM+JSON1
//
//  Created by NTS on 28/11/23.
//

import Foundation
import UIKit
import Alamofire

class UserViewModel
{
    weak var VC: ViewController?
    var arrayusers = [UserModel]()
    
    
    func getallUserDataAF(){
        AF.request("https://jsonplaceholder.typicode.com/todos/").response {
            response in
            if let data = response.data {
                do{
                    let json = try JSONDecoder().decode([UserModel].self, from: data)
                    self.arrayusers.append(contentsOf: json)
                    DispatchQueue.main.async {
                        self.VC?.tableView.reloadData()
                    }
                }catch let error{
                    print(error.localizedDescription)
                }
            }
        }
    }
    
    func getAllUserData(){
        URLSession.shared.dataTask(with: URL(string: "https://jsonplaceholder.typicode.com/todos/")!) { (data, response, error) in
            if error == nil {
                if let data = data {
                    do{
                        let json = try JSONDecoder().decode([UserModel].self, from: data)
                        self.arrayusers.append(contentsOf: json)
                        DispatchQueue.main.async {
                            self.VC?.tableView.reloadData()
                        }
                    }catch let error{
                        print(error.localizedDescription)
                    }
                }
                
            } else {
                print(error?.localizedDescription)
            }
        } .resume()
        
    }
}
