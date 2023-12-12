//
//  ViewController.swift
//  URLSessionPostRequest1
//
//  Created by NTS on 08/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func postButtonPressed(_ sender: UIButton) {
        self.setupPostMethod()
    }
    
}



extension ViewController
{
    func setupPostMethod()
    {
        guard let uid = self.userId.text else { return }
        guard let title = self.titleField.text else { return }
        guard let body = self.bodyField.text else { return }
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/"){
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            
            let parameters: [String: Any] = [
                "userId": uid,
                "title": title,
                "body": body
            ]
            
            request.httpBody = parameters.percentEscaped().data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                
                guard let data = data else {
                    
                    if error ==  nil {
                        print(error?.localizedDescription ?? "unknown error")
                    }
                    return
                }
                
                if let response = response as? HTTPURLResponse{
                    guard(200 ... 299) ~= response.statusCode else {
                        print("Status Code :- \(response.statusCode)")
                        print(response)
                        return
                    }
                }
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch let error{
                    print(error.localizedDescription)
                }
                
            }
            .resume()
        }
    }
}



extension Dictionary
{
    func percentEscaped() -> String
    {
        return map{ (key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return escapedKey + " = " + escapedValue
        }
        .joined(separator: "&")
    }
}



extension CharacterSet
{
    static let urlQueryValueAllowed: CharacterSet = {
        let generalDeliminatersToEncode = ":#[]@"
        let subDeliminatersToEncode = "!$&'()*+,;="
        var allowed = CharacterSet.urlQueryAllowed
        allowed.remove(charactersIn: "\(generalDeliminatersToEncode)\(subDeliminatersToEncode)")
        return allowed
    }()
}

