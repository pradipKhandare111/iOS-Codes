
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func valueChanged(_ sender: UIStepper) {
        label.text = Int(sender.value).description
    }
}

