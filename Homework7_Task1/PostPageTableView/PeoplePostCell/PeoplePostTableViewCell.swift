
import UIKit

class PeoplePostTableViewCell: UITableViewCell {

    // MARK: - Outlets
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var viewsCountLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var countOfCommentsLabel: UILabel!
    @IBOutlet weak var postedAtLabel: UILabel!
    
    // MARK: - Functions

    // outlets settings
    func configure(with person: Person) {
        viewsCountLabel.text = "\(person.viewsCount) views"
        descriptionLabel.text = person.welcomeDescription
        countOfCommentsLabel.text = "View all \(person.countOfComments) comments"
        postedAtLabel.text = person.postedAt
        avatarImageView.layer.cornerRadius = 25
        avatarImageView.downloaded(from: person.avatarImageName,
                                   contentMode: .scaleToFill)
        postImageView.downloaded(from: person.postImageName,
                                 contentMode: .scaleToFill)
    }
    
} 
 
