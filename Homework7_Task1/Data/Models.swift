
import Foundation

// MARK: - Person
struct Person: Codable {
    let avatarImageName: String
    let countOfComments: Int
    let welcomeDescription: String
    let postImageName: String
    let postedAt: String
    let viewsCount: Int

    enum CodingKeys: String, CodingKey {
        case avatarImageName, countOfComments
        case welcomeDescription = "description"
        case postImageName, postedAt, viewsCount
    }
}

typealias Persons = [Person]
