
import Foundation

struct DataManager {
    
    // parsing JSON
    func getListOfPersons() -> [Person] {
        guard let url = Bundle.main.url(forResource: "PersonJSON", withExtension: "json") else { return [] }
        
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            return try decoder.decode(Persons.self, from: data)
        } catch {
            fatalError("Whoops")
        }
    }
}

