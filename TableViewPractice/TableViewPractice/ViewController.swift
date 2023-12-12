
import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
//        cell?.textLabel?.text = array1[indexPath.row]
//        cell?.detailTextLabel!.text = array2[indexPath.row]
//        return cell!
        
        let cell: TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.labelUpperCase.text = array1[indexPath.row]
        cell.labelLowerCase.text = array2[indexPath.row]
        cell.imageViewOutlet.image = arrayImage[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail: DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detail.strLbl1 = array1[indexPath.row]
        detail.strLbl2 = array2[indexPath.row]
        detail.strImg = arrayImage[indexPath.row]
        self.navigationController?.pushViewController(detail, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            array1.remove(at: indexPath.row)
            array2.remove(at: indexPath.row)
            arrayImage.remove(at: indexPath.row)
            tableViewOutlet.deleteRows(at: [indexPath], with: .fade)
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //set initial cell
        cell.alpha = 0
        
        let transform = CATransform3DTranslate(CATransform3DIdentity, 250, 280, 0)
        cell.layer.transform = transform
        
        //Final set cell
        UIView.animate(withDuration: 2) {
            cell.alpha = 1.0
            cell.layer.transform = CATransform3DIdentity
            
        }
    }

    var array1 = ["SUNSET1", "SUNSET2", "SUNSET3", "SUNSET4", "SUNSET5", "SUNSET1", "SUNSET2", "SUNSET3", "SUNSET4", "SUNSET5"]
    var array2 = ["sunset1", "sunset2", "sunset3", "sunset4", "sunset5", "sunset1", "sunset2", "sunset3", "sunset4", "sunset5"]
    
    var arrayImage = [UIImage(imageLiteralResourceName: "sunset1"),
                      UIImage(imageLiteralResourceName: "sunset2"),
                      UIImage(imageLiteralResourceName: "sunset3"),
                      UIImage(imageLiteralResourceName: "sunset4"),
                      UIImage(imageLiteralResourceName: "sunset5"),
                      UIImage(imageLiteralResourceName: "sunset1"),
                      UIImage(imageLiteralResourceName: "sunset2"),
                      UIImage(imageLiteralResourceName: "sunset3"),
                      UIImage(imageLiteralResourceName: "sunset4"),
                      UIImage(imageLiteralResourceName: "sunset5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
    }

}

