//
//  ViewController.swift
//  ParsingJsonDataGET
//
//  Created by NTS on 23/11/23.
//

import UIKit


struct jsonStruct: Decodable {
    let title: String
    let body: String
    let userId: String
    let id: String
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.titleLabel.text = arrData[indexPath.row].title
        cell.bodyLabel.text = arrData[indexPath.row].body
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail : DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strId = arrData[indexPath.row].id
        detail.strUserid = arrData[indexPath.row].userId
        
        
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var arrData = [jsonStruct]()
    
    func getdata(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            do{
                if error == nil {
                    self.arrData = try JSONDecoder().decode([jsonStruct].self, from: data!)
                    
                    for _ in self.arrData{
                      //  print("The title is \(mainarray.title) and body is \(mainarray.body)")
                        DispatchQueue.main.async {
                            self.tableView.reloadData()
                        }
                       
                    }
                }
            }catch let error {
                print(error.localizedDescription)
            }
        } 
        .resume()
    }

    //Table-View
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
       getdata()
    }


}

