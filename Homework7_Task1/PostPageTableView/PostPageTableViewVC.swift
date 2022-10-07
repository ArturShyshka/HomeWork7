
import UIKit

// MARK: - Class PostPageTableViewVC
class PostPageTableViewVC: UIViewController {

    // - Outlets
    @IBOutlet weak var PeoplePostTableView: UITableView!
    
    // - Properties
    var arrayOfPeople: [Person] = []
    
    // - Main Function
    override func viewDidLoad() {
        super.viewDidLoad()

        let nib = UINib(nibName: "PeoplePostTableViewCell", bundle: nil)
        self.PeoplePostTableView.register(nib, forCellReuseIdentifier: "PeoplePostTableViewCell")
        
        arrayOfPeople = DataManager().getListOfPersons()
        PeoplePostTableView.reloadData()
    }

}

// MARK: - Extencion PostPageTableViewVC
extension PostPageTableViewVC: UITableViewDelegate, UITableViewDataSource {
    
    // - DataSource method
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = PeoplePostTableView.dequeueReusableCell(withIdentifier: "PeoplePostTableViewCell") as? PeoplePostTableViewCell else {
            return UITableViewCell()
            
        }
        cell.configure(with: arrayOfPeople[indexPath.row])
        return cell
    }
    
    // - Delegate method
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
