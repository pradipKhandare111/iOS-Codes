
import UIKit

class ViewController: UIViewController {
    
    typealias completionHandler = ([String: Any]) -> Void
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var completion : completionHandler?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        let dict = ["name": name, "password": password]
        guard let completionBlock = completion else { return }
        completionBlock(dict)
        self.navigationController?.popViewController(animated: true)
    }
}

