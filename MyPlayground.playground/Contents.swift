//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// **********
// * Bubble sort with for loop
// **********

var anArray = [7,5,4,3,1]

for _ in 0..<anArray.count {
    for index in 0..<anArray.count - 1 {
        let item = anArray[index]
        let nextItem = anArray[index + 1]
        if (item > nextItem) {
            anArray[index] = nextItem
            anArray[index + 1] = item
        }
    }
}

print(anArray)

// **********
// * Bubble sort with while loop
// **********

var array2 = [10, 3, 5, 4]
var numberOfSteps = array2.count

while numberOfSteps > 0 {
    numberOfSteps -= 1
    var index = 0;
    while index < array2.count - 1 {
        let item = array2[index]
        let nextItem = array2[index + 1]
        if item > nextItem {
            array2[index] = nextItem
            array2[index + 1] = item
        }
        index += 1
    }
}

print(array2)

// **********
// * String Revert with for loop
// **********

let oneString = "This is a String"
var revertString = ""

for index in stride(from: oneString.characters.count - 1, through: 0, by: -1) {
    let strIndex = oneString.index(oneString.startIndex, offsetBy: index)
    revertString.append(oneString[strIndex])
}

print(revertString)

// **********
// * String Revert with while loop
// **********

let string = "Another string to revert"
var reverseString = ""

var offset = 1
repeat {
    let indexer = string.index(string.endIndex, offsetBy: offset * -1)
    reverseString.append(string[indexer])
    offset += 1
} while offset <= string.characters.count

print(reverseString)

// **********
// * String Revert with one line
// **********

let item = "String which will be revert"
let revertStr = String(item.characters.reversed())

// **********
// * String Revert with for loop
// **********

let myString = "This string will be revert"
var myRevert = ""
for character in myString.characters {
    myRevert.insert(character, at: myRevert.startIndex)
}

print(myRevert)

// **********
// * String Revert with while loop
// **********

let myOtherString = "Lets revert this string"
var currentIndex = myOtherString.startIndex
var myOtherRevertString = ""
while currentIndex != myOtherString.endIndex {
    myOtherRevertString.insert(myOtherString[currentIndex], at: myOtherRevertString.startIndex)
    currentIndex = myOtherString.index(after: currentIndex)
}

print(myOtherRevertString)