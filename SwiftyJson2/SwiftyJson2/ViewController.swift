//
//  ViewController.swift
//  SwiftyJson2
//
//  Created by NTS on 09/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    var arrData = [ModelJson]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() 
    {
        super.viewDidLoad()
        jsonParsing()
    }
    
    func jsonParsing()
    {
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")
        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            guard let data = data else { return }
            
            do{
                let json = try JSON(data: data)
                
                for arr in json.arrayValue
                {
                    self.arrData.append(ModelJson(json: arr))
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }catch {
                print(error.localizedDescription)
            }
        }
        .resume()
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.title.text = arrData[indexPath.row].title
        cell.body.text = arrData[indexPath.row].body
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    
}

