import UIKit

//Integer

print("The maximum Int value is \(Int.max)")
print("The minimum Int value is \(Int.min)")

//Defining Integers
let numberOfPages: Int = 10 //explicity declaring
let numberOfChapters = 3 //implicity declaring

//Unsigned Integer
let numberOfPeople: UInt = 40 //unsigned Integer
print("The maximum UInt value is \(UInt.max)")
print("The UInt magnitude is \(UInt.Magnitude())")

/*
Int8 contains from -128 to 127.
*/
//Overflow operators
/*
 The overflow operators is used to handle when a value is too big or too small
 */

let y: Int8 = 120
let z = y &+ 10
print(z)
//let's understand what happened
//The maximun number permited by Int8 is 128,
//So 120 + 10 would be 130.
//Instead, we have to use maximun Int8 number
// 128, to 130 we still need 2
//So 128 + 9 -> -127
//And 120 + 10 -> -126

//Converting Between Integer Types

let a: Int16 = 200
let b: Int8 = 50
let c = a + Int16(b)

//Floating-Point Numbers

/*
 There are two main floating-point number types:
 Float -> 32-bit floating-point number
 Double -> 64-bit floating-point number
 */

let d1 = 1.1
let d2 : Float = 1.1
let d3: Double = 1.1
let f1: Float = 100.3

print("""
    the type of d1 is \(type(of: d1))
    the type of d2 is \(type(of: d2))

    d1 and d3 are the same \(d1 == d3) // we can't compare the two numbers
 """)

if d1 + 0.1 == 1.2 {
    print("d1 + 0.1 is equal to 1.2") //this line is not printed
}

/*
 the reason why the line 63 is not printed is because the swift store the number 1.1 + 0.1 in something
 like 1.200000000000000002
 and the literal number 1.2 in something like 1.199999999999999999

So we have be careful when we handle with floating-point numbers, specially when we have
monetary numbers
 */

/*
 Range of Numbers
 It's possible represent a range of number as a list

 */

let ticketCount = 1_000
let ticketNumbers = 1...ticketCount
print(dump(ticketNumbers))

//Some curiosities

//Binary represetation
let binaryInt = 0b10101010
print(binaryInt)

//Scientific notation
let scientificNumber = 1.66e5
print(scientificNumber)


//Hexadecimal numbers
let hexNumber = 0x8ba3df00dd
print(hexNumber)

//Large number

let lightSpeed = 299_792_458 //m/s
print(lightSpeed)

