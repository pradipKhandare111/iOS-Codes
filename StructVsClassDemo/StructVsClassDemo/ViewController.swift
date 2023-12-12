
import UIKit

class ViewController: UIViewController {
    
    
    struct MyStruct {
        var name: String
        
        init(name: String) {
            self.name = name
        }
    }
    
    class MyClass
    {
        var name : String
        
        init(name: String) {
            self.name = name
        }
    }
    
    func classDemo()
    {
        let fName = MyClass(name: "Vijay")
        var lName = fName //reference
        lName.name = "Raj"
        print(fName.name)//Raj
        print(lName.name)//Raj
    }
    func structDemo()
    {
        var fName = MyStruct(name: "Pradip")
        var lName = fName //value
        lName.name = "Tukaram"
        print(fName.name)// Pradip
        print(lName.name)//Tukaram
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        //structDemo()
        classDemo()
    }


}

