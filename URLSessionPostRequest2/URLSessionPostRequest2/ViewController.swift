//
//  ViewController.swift
//  URLSessionPostRequest2
//
//  Created by NTS on 08/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldUserId: UITextField!
    @IBOutlet weak var textFieldTitle: UITextField!
    @IBOutlet weak var textFieldBody: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func postButtonPressed(_ sender: UIButton) {
        setupPostMethod()
    }
    
}

extension ViewController
{
    func setupPostMethod(){
        guard let uid = self.textFieldUserId.text else { return }
        guard let title = self.textFieldTitle.text else { return }
        guard let body = self.textFieldBody.text else { return }
        
        if let url = URL(string: "https://jsonplaceholder.typicode.com/posts/"){
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            
            let parameters : [String: Any] = [
                "userId": uid,
                "title": title,
                "body": body
            ]
            
            request.httpBody = parameters.percentEscaped().data(using: .utf8)
            
            URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data = data else {
                    
                    if error == nil {
                        print(error?.localizedDescription ?? "There is an Unknown error")
                    }
                    return
                }
                
                if let response = response as? HTTPURLResponse{
                    guard(200 ... 299) ~= response.statusCode else {
                        print("Status code :- \(response.statusCode)")
                        print(response)
                        return
                    }
                }
                
                do{
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                }catch let error {
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
        return map {(key, value) in
            let escapedKey = "\(key)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            let escapedValue = "\(value)".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? ""
            return escapedKey+" = "+escapedValue
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
