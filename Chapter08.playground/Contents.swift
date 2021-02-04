import UIKit


//Creating an Array

var bucketList: Array<String> // or var bucketList: [String]

bucketList = ["Climb Mt. Everest"]

var emptySTringArray: [String] = []
var emptyStringArray2 = [String]()
var emptySTringArray3 = Array<String>()


//Accessing and Modifying Arrays

bucketList.append("Read War and Peace")

//counting items in the array
bucketList.count

//removing an item form the array

bucketList.remove(at: 1)
bucketList
bucketList.append("Go on an Arctic expedition")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")


//Subscripting to find your top three items
print(bucketList[...2])

//subscripting to append new information
bucketList[1] += " with friends"
bucketList[1]

//inserting a new ambition
bucketList.insert("Toboggan across Alaska" , at: 1)
bucketList
//Combining Arrays
var newItems = [
"Bike across America",
"Make a perfect souffle",
"Solve Fermat's enigma"
]

for item in newItems { // or simply, bucketList += newItems
    bucketList.append(item)
}
print(bucketList)


//Immutable Arrays

let lunches = [ "Cheeseburger", "Veggie Pizza", "Chicken Caesar Salad", "Black Bean Burrito", "Falafel Wrap"]

let shuffledLunches = lunches.shuffled()


