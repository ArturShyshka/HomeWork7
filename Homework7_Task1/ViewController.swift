
// Simple TableMonthVC

import UIKit

// MARK: - Class ViewController
class ViewController: UIViewController {

    @IBOutlet weak var simpleTableView: UITableView!
    
    let arrayOfMonth = ["January", "February", "March", "April", "May", "June",
                        "July", "August", "September", "October", "November", "December"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        simpleTableView.delegate = self
        simpleTableView.dataSource = self
    }
}

// MARK: - Extencion ViewController
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    // - DataSource method
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMonth.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = simpleTableView.dequeueReusableCell(withIdentifier: "Cell") as! SimpleTableViewCell
        cell.nameMonthLabel.text = "\(arrayOfMonth[indexPath.row])"
        return cell
    }
    
    // - Delegate method
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SimpleDetailsViewController") as! SimpleDetailsViewController
        
        viewController.indexMonth = indexPath.row + 1
        viewController.name = arrayOfMonth[indexPath.row]
        
        navigationController?.pushViewController(viewController, animated: true)
    }
}



