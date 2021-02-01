import UIKit

/*
If/else statements execute code based on whether the condition under consideration evaluates to
 true. switch statements consider a particular value and attempt to match it against a number of
 expressions, called cases. If there is a match, the switch executes the code associated with
 that case. In this chapter, you will explore the use of switch statements for evaluating an
 expression against multiple possible matching values.

 */

var statusCode = 404

var errorString : String

//Normal Syntax

switch statusCode {
    case 401:
    errorString = "Unauthorized"
    case 403:
      errorString = "Forbidden"
    case 404:
      errorString = "Not found"
    default:
    errorString = "None"
}


//Switch case with multiple values
switch statusCode {
    case 401:
    errorString = "Unauthorized"
    case 403:
      errorString = "Forbidden"
    case 404, 405: //check out
      errorString = "Not found"
    default:
    errorString = "None"
}

//Switch using ranges
switch statusCode {
    case 401:
    errorString = "Unauthorized"
    case 400...417:
      errorString = "Client error, 4xx"
    case 500...505:
      errorString = "Server error, 5xx"
    default:
    errorString = "None"
}

//Where clauses
switch statusCode {
    case 401:
    errorString = "Unauthorized"
    case 400...417:
      errorString = "Client error, \(statusCode)"
    case 500...505:
      errorString = "Server error, \(statusCode)"
    case let code where code < 100 || code >= 600:
        errorString = "\(code) is an illegal status code"
    default:
    errorString = "None"
}

//Tuples and Pattern Matching

let error = (code: statusCode,msg: errorString)

//Accessing the elements of a tuple
error.0
error.1

//or
error.code
error.msg

//Pattern Matching in tuples
let firstErrorCode = 404
let secondErrorCode = 418

let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes {
    case (404, 404):
        print("Both error codes were 404")
    case (404, _): //On this case, the underscore (_) works as wildcard
       print("Only the first error codes was 404")
    case (_, 404):
    print("Only the second error codes was 404")
    default:
    print("Neither code is 404")
}

/*
Switch Vs If/else

 switch statements are primarily useful for comparing a value against a number of potentially
 matching cases. if/else statements, on the other hand, are best for checking against a single
 condition. switch also offers a number of powerful features that allow you to match against
 ranges, bind values to local constants or variables, and match patterns in tuples – to name
 just a few features covered in this chapter.
 */

//If - case

let age = 25

if case 18...35  = age {
    print("cool demographic")
}

//if - case with multiple conditions

if case 18...35 = age, age >= 25 {
    print("It's a cool demographic and can rent a car")
}


let point = (x: 1, y: 4)

switch  point {
    case let q1 where (point.x > 0) && (point.y > 0):
        print("\(q1) is in quadrant 1")
    case let q1 where (point.x < 0) && (point.y > 0):
        print("\(q1) is in quadrant 2")
    case let q1 where (point.x < 0) && (point.y < 0):
        print("\(q1) is in quadrant 3")
    case let q1 where (point.x > 0) && (point.y < 0):
        print("\(q1) is in quadrant 4")
    case (_,0):
        print("\(point) sits on the x-axis")
    case (0,_):
        print("\(point) sits on the y-axis")
    default:
        print("Case not covered")
}

