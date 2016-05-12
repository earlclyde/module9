import UIKit

class Person {
    
    private let nameKey = "name"
    private let ageKey = "age"
    private let favoriteMovieKey = "favoriteMovie"
    
    let name: String
    let age: Int
    let favoriteMovie: String
    
    var fullDescription:String {
        return "\(favoriteMovie) \(age) \(name)"
    }
    var dictionaryRepresentation: [String: AnyObject] {
        
        let personDictionary: [String: AnyObject] = [nameKey: self.name, ageKey: self.age, favoriteMovieKey: self.favoriteMovie]
        
        return personDictionary
    }
    
    init(name: String, age: Int, favoriteMovie: String) {
        self.name = name
        self.age = age
        self.favoriteMovie = favoriteMovie
}
    init?(dictionary: [String: AnyObject]) {
    
        guard let name = dictionary[nameKey] as? String,
            let age = dictionary[ageKey] as? Int,
        let favoriteMovie = dictionary[favoriteMovieKey] as? String else {
            
            self.name = "doesnt matter"
            self.age = 33
            self.favoriteMovie = "donnie darko probably"
            
            return nil
        }
// If everything is here
        self.name = name
        self.age = age
        self.favoriteMovie = favoriteMovie

    }
}

// Class to dictionary 

let myPerson = Person(name: "Mason", age: 19, favoriteMovie: "Dead Poets Society")
print(myPerson.dictionaryRepresentation)

// Dictionary to class 

let idealPersonDictionary = ["nameKey": "Robin", "ageKey": 66, "favoriteMovieKey": "Donnie Darko"]
let idealPerson = Person(dictionary: idealPersonDictionary)

// Loop Person 

let lamePerson = Person(name: "Hitler", age: 0, favoriteMovie: "King Kong")
let lamePersonDictionary = lamePerson.dictionaryRepresentation
let secondLamePerson = Person(dictionary: lamePersonDictionary)
let secondLamePersonDictionary = secondLamePerson?.dictionaryRepresentation
