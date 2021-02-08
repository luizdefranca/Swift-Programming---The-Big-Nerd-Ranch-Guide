import UIKit

//SETS
/*
 A Set is an unordered collection of distinct instances. This definition sets it apart from an Array, which is ordered and can accommodate repeated values.
 A Set has some similarities to a Dictionary, but it is also a little different. Like a dictionary, a set’s values are unordered within the collection. Also, like a dictionary’s keys, the values in a Set must be unique; a value can only be added to a set once. To ensure that elements are unique, Set requires that its elements follow the same rule as a dictionary’s keys – being hashable (which you will learn about in Chapter 25).
 However, while dictionary values are accessed via their corresponding key, a set only stores individual elements, not key-value pairs.
 Table 11.1 summarizes Swift’s three collection types.

 */

//Creating a set
var groceryList = Set<String>(["Apples", "Oranges"])

//creating a set using array literal syntax
var alternativeGroceryList : Set = [ "Apples", "Oranges"]

// Adding to a set

groceryList.insert("Kiwi")
groceryList.insert("Pears")

//Looping through a set
for food in groceryList {
    print(food)
}

//Removing an element from a set
groceryList.remove("Pears")

var test  = NSOrderedSet(object: groceryList)
print(test)

//Checking if a set contains a value

let hasBanana = groceryList.contains("Bananas")
print(hasBanana)

//Unions

let friendsGroceryList = Set(["Bananas", "Cereal", "Milk", "Oragens"])
let sharedList = groceryList.union(friendsGroceryList)

//Intersections

let duplicatedItems = groceryList.intersection(friendsGroceryList)

//Disjoint
let disjoint = groceryList.isDisjoint(with: friendsGroceryList)

//Initizlizing sets using arrays

let players = ["Anna", "Vijay", "Jenka" ]
let winners = ["Jenka", "Jenka", "Vijay", "Jenka"]

let playerSet = Set(players)
let winnerSet = Set(winners)

//Subtracting one set from another
let subtraction = playerSet.subtracting(winnerSet)


//Bronze Challenge
let myCities: Set = ["Atlanta", "Chicago", "Jacksonville", "New York", "Denver"]
let yourCities: Set = [ "Chicago", "Denver", "Jacksonville"]

let myCitiesContainsAll = myCities.isSuperset(of: yourCities)


