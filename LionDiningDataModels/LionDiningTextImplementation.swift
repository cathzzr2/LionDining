import Foundation

// Define a class to hold the list of pairs and methods
class PairList {
    // Define the type for the pair
    typealias Pair = (String, String)
    
    // Initialize the list of pairs
    private var pairs: [Pair]
    
    init(pairs: [Pair] = []) {
        self.pairs = pairs
    }
    
    // Method to get the first string as it is
    func ldGetText(_ input: String) -> String {
        return input
    }
    
    // Method to get the corresponding second string
    func ldGetTextDescription(_ input: String) -> String? {
        for pair in pairs {
            if pair.0 == input {
                return pair.1
            }
        }
        return nil
    }
    
    // Method to add a new pair
    func addPair(first: String, second: String) {
        pairs.append((first, second))
    }
}
