import UIKit

let playground = "Hello, playground"

var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

// ESCAPE CHARACTERS
/*
 There are several escape sequences you can use to insert different types of content into a string. Here some worth knowing:
 • \() interpolates an expression into a string.
 • \n inserts a new line when printing the string.
 • \" inserts a quotation mark in a string (otherwise it would prematurely close the string).
 • \\ inserts a backslash in a string (otherwise it would begin an escape sequence).
 */


let quote = "I wanted to \"say \":\n\(playground)"
print(quote)

/*
Sometimes, you do not want the compiler to do anything at all to the contents of a string. No escaping, no string interpolation. Creating a raw string like this is as easy as wrapping it with hash symbols (#):

 */

let rawQuote = #"I wanted to \"say \":\n\(playground)"#
print(rawQuote)

/*
 In a short word, string is a collection of characters where character is only a single symbol.

 */

for character : Character in mutablePlayground {
    print("'\(character)'")
}

/*
 Unicode
 Unicode is an international standard that encodes characters so they can be seamlessly processed and represented regardless of the platform. Unicode represents human language (and other forms of communication, like emoji) on computers. Every character in the Unicode standard is assigned a unique number.
 Swift’s String and Character types are built on top of Unicode, and they do the majority of the heavy lifting. Nonetheless, it is good to have an understanding of how these types work with Unicode. Having this knowledge will likely save you some time and frustration in the future.
 */

/*
 Unicode scalars
 At their heart, strings in Swift are composed of Unicode scalars. Unicode scalars are 21-bit numbers that represent a specific character in the Unicode standard. The text U+1F60E is the standard way of writing a Unicode character. (The 1F60E portion is a number written in hexadecimal.) For example, U+0061 represents the Latin small letter a. U+2603 represents a snowman.

 Every character in Swift is an extended grapheme cluster. Extended grapheme clusters are sequences of one or more Unicode scalars that combine to produce a single human-readable character. One Unicode scalar generally maps onto one fundamental character in a given language, but there are also combining scalars. For example, U+0301 represents the Unicode scalar for the combining acute accent:  ́. This scalar is placed on top of – that is, combined with – the character that precedes it.

 */

let snowman = "\u{2603}"
let aAcute = "\u{0061}\u{0301}" // 'a' + '´'
print(snowman)
print(aAcute)

for scalar in mutablePlayground.unicodeScalars {
    print(scalar.value)
}

/*
 Canonical equivalence
 While there is a role for combining scalars, Unicode also provides already combined forms for some common characters. For example, there is a specific scalar for á. You do not actually need to decompose it into its two parts, the letter and the accent. The scalar is U+00E1. Create a new constant string that uses this Unicode scalar.
 */

let aAcutePrecomposed = "\u{00E1}"
print("\(aAcute == aAcutePrecomposed)")

//Counting elements
/*
Despite the common sense, combined scalar and canonical equivalents have the same character count.


 */

print(aAcute.count)
print(aAcutePrecomposed.count)

/*

 Indices and ranges
 Because strings are ordered collections of characters, if you have worked with collections in other languages, you might think that you can access a specific character in a string like so:
 let playground = "Hello, playground" let index = playground[3] // 'l'?
 The code playground[3] uses the subscript syntax. In general, the brackets ([]) after a variable name indicate that you are using a subscript in Swift. Subscripts allow you to retrieve a specific value within a collection.
 The 3 in this example is an index that is used to find a particular element within a collection. The code above suggests that you are trying to select the fourth character from the collection of characters making up the playground string (fourth, not third, because the first index is 0). And for other Swift collection types, subscript syntax like this would work. (You will learn more about subscripts below and will also see them in action in Chapter 8 on arrays and Chapter 10 on dictionaries.)
 However, if you tried to use a subscript like this on a String, you would get an error: "'subscript' is unavailable: cannot subscript String with an Int." The Swift compiler will not let you access a specific character on a string via a subscript index.
 This limitation has to do with the way Swift strings and characters are stored. You cannot index a string with an integer, because Swift does not know which Unicode scalar corresponds to a given index without stepping through every preceding character. This operation can be expensive. Therefore, Swift forces you to be more explicit.
 Swift uses a type called String.Index to keep track of indices in string instances. (The period in String.Index just means that Index is a type that is defined on String. You will learn more about nested types like this in Chapter 16.)
 As you have seen in this chapter, an individual character may be made up of multiple Unicode code points (another term for Unicode scalars). It is the job of the Index to represent these code points as a single Character instance and to combine these characters into the correct string.
 Because Index is defined on String, you can ask the String to hand back indices that are meaningful. To find the character at a particular index, you begin with the String type’s startIndex property. This property yields the starting index of a string as a String.Index. You then use this starting point in conjunction with the index(_:offsetBy:) method to move forward until you arrive at the position of your choosing. (A method is like a function; you will learn more about them in Chapter 12.)
 Say you want to know the fifth character of the playground string that you created earlier.
 */

let start = playground.startIndex
print(type(of: start))
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end]

//Pulling out a range

let range = start...end
let firstFive = playground[range]

//Using a one-sided range

let firstFiveUsingOneSidedRange = playground[...end]

//Multiline Strings

let tale = """
it was the best of times,
it was the worst of times.
"""
print(tale)
