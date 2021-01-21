import UIKit


/*
************************
** Chapter 02 **********
************************
 */

//types

//String type
//var numberOfStoplights = "Four"

//Integer type
var numberOfStoplights: Int = 4
numberOfStoplights += 2

//Constant vs Variables
// Swift has different forms for define constants and variables
// You declare a varible using the keyword "var"
// Rather you define a constant with the keyword "let"
// the difference between constant and variable is that constant
// does not vary after you define its value, however variable
// can change its value anytime

let numberOfLights : Int = 2
// numberOfLights += 2 //it gives you a compiler error

//It's possible declare a variable without define its values
//In this case you don't initialize the variable

var population: Int

// here you initilize the variable population
population = 5939


//String Interpolation
let townName: String = "knowhere"
let elevation: Double = 350.90
let townDescription = "\(townName) has a population of \(population), \(numberOfStoplights) stoplights and \(elevation) of elevation"
print(townDescription)





