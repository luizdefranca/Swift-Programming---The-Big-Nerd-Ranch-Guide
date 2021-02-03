import UIKit

// Loops

//Using a for-in loop
var myFirstInt: Int = 0

for i in 1...5 {        //in this case we declare an iterator called i. It represents the current
    myFirstInt += 1     //value into iteration of the loop.
    print("myFirstInt = \(myFirstInt) at iteration \(i)")
}


// Replacing i with _
// if we aren't going to use the iterator value, it's possible to replace a variable for underscore

//Where
/*
 “Swift’s for-in loop supports the use of where clauses similar to switch uses.
 Using where allows for finer control over when the loop executes its code. The where clause
 provides a logical test that must be met to execute the loop’s code. If the condition established
 by the where clause is not met, then the loop’s code is not run.”

 */


for i in 1...100 where i % 3 == 0 {
    print(i)
}

//the code above is similar to the following example
for i in 1...100 {
    if i % 3 == 0 {
        print(i)
    }
}

//while loops
/*
 “while loop executes the code inside its body for as long as a specified condition is true.”
 */

var  j = 1
while j < 6 {
    myFirstInt += 1
    print(myFirstInt)
    j += 1
}

myFirstInt = 0
repeat {
    myFirstInt += 1
       print(myFirstInt)
       j += 1
} while j < 6

// The difference between while and repeat-while is that with last one it'll happen one more
//interation before the condition is complete.


/*
 Control Transfer Statements in Loops

 */

var shields = 5
var blasterFireCount = 0
var blasterOverheating = false
var spaceDemonsDestroyed = 0
while shields > 0 {
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }

    if blasterOverheating {
        print("Blasters overheted! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blasterOverheating = false
        blasterFireCount = 0
    }

    if blasterFireCount > 100 {
        blasterOverheating = true
        continue
    }

    //Fire blasters!
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}

//Fizz Buzz code

var number = 20

for i in 1...number {
    if (i % 3 == 0) && (i % 5 == 0) {
        print("FIZZ BUZZ \n")
        continue
    }
    if (i % 3 == 0){
        print("FIZZ \n")
        continue
    }
    if (i % 5 == 0){
        print("BUZZ \n")
        continue
    }
    print("\(i) \n")
}


