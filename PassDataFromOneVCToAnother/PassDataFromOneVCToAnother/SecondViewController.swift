
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    
    var strName: String! = nil
    var strEmail: String! = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelName.text = strName
        labelEmail.text = strEmail
        
    }
    

    

}
