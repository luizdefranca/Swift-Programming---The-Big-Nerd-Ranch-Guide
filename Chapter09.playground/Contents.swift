import UIKit

//Optinals

/*
 n Swift, it is illegal to use a variable before you have given it a value. And once a value has been set, it is impossible to take the value away; you can only assign another value of the same type. But sometimes you need to represent the absence of a value, or a value that might go away, without crashing your app.
 If you ask someone “How many beans are in this jar?”, you might expect an integer answer (and declare an Int variable to store it). But if they answer “I don’t know,” what should you put in your variable? 0? Some other number? If your variable can only store values of type Int, what do you do so that you can move on with your program and deal with the lack of an answer later?
 You need a way to declare a variable that might have an Int or might be empty – or might become empty later, after a value has been assigned.
 Swift has a type called Optional to represent the possible absence of a value. You can think of Optional as a small container type that can hold either a ready-for-use instance of another type or nothing at all. If an instance of type Optional has no value associated with it, we say that its value is nil.
 */

var errorCodeString: Optional<String>
errorCodeString = Optional("404")
print(errorCodeString)

//Another way to define a optional
var errorCodeString2: String?
errorCodeString2 = "404"
print(errorCodeString2)

if errorCodeString2 != nil {
    let theError = errorCodeString2! // the exclamation signal it's called forced unwrapping
    print(theError)
}

//Optinal Binding

if let errorCode = errorCodeString2 {
    if let errorInt = Int(errorCode) {
        print("\(errorCode): \(errorInt)")
    }
}

//Unwrapping multiple optionals
if let theError = errorCodeString2,
    let erroCodeInt = Int(theError) {
    print("\(theError): \(erroCodeInt)")
}

//Optional binding and additional check

if let theError = errorCodeString2,
    let errorCodeInt = Int(theError),
    errorCodeInt == 404{

    print("\(theError): \(errorCodeInt)")
}

//Implicitly unwrapped optionals

var unwrappedErrorCodeString : String!
unwrappedErrorCodeString = "404"
print(unwrappedErrorCodeString)

var errorCodeString4: String! = nil
//let anotherErrorCodeString: String = errorCodeString4 // Will this work?
let yetAnotherErrorCodeString = errorCodeString4 // Optional? Implicitly unwrapped?

//Optional Chaining

var errorCodeString5 : String?
errorCodeString5 = "404"
var errorDescritpion: String?
if let theError = errorCodeString5,
    let errorCodeInt = Int(theError),
    errorCodeInt == 404{
    errorDescritpion = "\(errorCodeInt + 200): resource not found."
}

var upCaseErrorDescription = errorDescritpion?.uppercased()

//Modigying an Optinal in Place
/*
 You can also modify an optional “in place” so that you do not have to create a new variable or
 constant. Add a call to the append(_:) method on upCaseErrorDescription.
 */

upCaseErrorDescription?.append("PLEASE TRY AGAIN.")
upCaseErrorDescription

//the nil coalescing operator
let description = errorDescritpion ?? "No error."

