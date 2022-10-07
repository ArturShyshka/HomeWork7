
import UIKit

// MARK: - Navigation VC
class SimpleDetailsViewController: UIViewController {

    @IBOutlet weak var currentMonthLabel: UILabel!
    @IBOutlet weak var nameMonthLabel: UILabel!
    
    var name: String?
    var indexMonth: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameMonthLabel.text = name
        currentMonthLabel.text = String(indexMonth!)
    }
}
