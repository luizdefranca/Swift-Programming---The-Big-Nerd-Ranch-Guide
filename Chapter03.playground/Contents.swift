import UIKit

var str = "Hello, playground"

//***************************
//**** Chapter 03 ***********
//***************************


//Conditionals

//If/Else

let population: Int = 5422
var message : String

if population < 10000 {
    message = "\(population) is a small town"
} else {
    message = "\(population) is pretty big"
}

print(message)

/*

 Comparison operators
 Operator    Description
 <    Evaluates whether the value on the left is less than the value on the right.
 <=    Evaluates whether the value on the left is less than or equal to the value on the right.
 >    Evaluates whether the value on the left is greater than the value on the right.
 >=    Evaluates whether the value on the left is greater than or equal to the value on the right.
 ==    Evaluates whether the value on the left is equal to the value on the right.
 !=    Evaluates whether the value on the left is not equal to the value on the right.
 ===    Evaluates whether the two references point to the same instance.
 !==    Evaluates whether the two references do not point to the same instance.

  */

//Define  a Boolean constant

let hasPostOffice: Bool = true

if !hasPostOffice {
    print("Where do we buy stamps?")
}
if population < 10000 {
    message = "\(population) is a small town!"
} else {
    message = "\(population) is pretty big!"
}






//Ternary Operator
/*
 The ternary operator is very similar to an if/else statement, but it has the more concise syntax
 a ? b : c. In English, the ternary operator reads something like,
 “If a is true, then do b. Otherwise, do c."
 */

//Instead use the if
message = population < 10000 ?
"\(population) is a small town!" :
"\(population) is pretty big!"

