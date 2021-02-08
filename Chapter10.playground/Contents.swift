import UIKit

//DICTIONARY
/*
 A Dictionary is a collection type that organizes its content by key-value pairs. The keys in a dictionary map onto values. A key is like the ticket you give to the attendant at a coat check. You hand your ticket over, and the attendant uses it to find your coat. Similarly, you give a key to an instance of the Dictionary type, and it returns to you the value associated with that key.
 The keys in a Dictionary must be unique. This requirement means that every key will uniquely map onto its value. To continue the coat check metaphor, a coat check might have several navy blue coats. So long as each coat has its own ticket, you can be sure that the attendant will be able to find your navy blue coat when you return with your ticket.
 */

//Creating a dictionary

//Different ways to declare a Dictionary

var dict1: Dictionary<String, Int>
var dict2: [String: Int]

//Creating a dictionary
var movieRatings = ["Tron": 4, "WarGames": 5, "Sneakers": 4]

//Using count
movieRatings.count


//Reading a value from the dictionary
let tronRating = movieRatings["Tron"]

//Modifying a value
movieRatings["Sneakers"] = 5
dump(movieRatings)


//Updating a value
/*
 here is another useful way to update values associated with a dictionary’s keys: the
 updateValue(_:forKey:) method. It takes two arguments: The first, value, takes the new value.
 The second, forKey, specifies the key whose value you would like to change.
 There is one small caveat: updateValue(_:forKey:) returns an optional, because the key may not
 exist in the dictionary. But that actually makes this method more useful, because it gives you
 a handle on the last value to which the key mapped, using optional binding.
 */
let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating =
    movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}

//Adding and removing values

movieRatings["Hackers"] = 5

dump(movieRatings)

//Removing a value
movieRatings.removeValue(forKey: "Sneakers")

dump(movieRatings)


//Setting hte key's value to nil
movieRatings["Sneakers"] = nil

//Looping through the dictionary
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")

}

//Accessing only the keys
for movie in movieRatings.keys {
    print(movie)
}

//Immutable Dictionaries
let immutableDicitionary = movieRatings

//Translagint a dictionary to an array
let watchedMovies = Array(movieRatings.keys)

let NWSL = ["Sky Blue": ["Kailen", "McKenzie", "Thaisa", "Shea", "Jen"],
            "Orlando Pride": ["Sydney", "Toni", "Shelina", "Emily", "Chioma"],
            "Houston Dash": ["Jane", "Michaela", "Rachel", "Allysha", "Janine"] ]

var prayers: Array<String> = []
NWSL.values.forEach{
    prayers.append(contentsOf: $0)
}
dump(prayers)

for (key, value ) in NWSL {
    print("\(key) members: ")
    value.forEach {
        print($0)
    }
}

