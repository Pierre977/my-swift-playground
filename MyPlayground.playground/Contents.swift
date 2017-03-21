//: Playground - noun: a place where people can play

import UIKit

// **********
// * Bubble sort
// * https://hu.wikipedia.org/wiki/Bubor%C3%A9krendez%C3%A9s
// **********
var anArray = [7,5,4,3,1]

for i in stride(from: anArray.count, to: 1, by: -1) {
    for j in stride(from: 0, to: i-1, by: 1) {
        if anArray[j] > anArray[j+1] {
            var temp = anArray[j]
            anArray[j] = anArray[j+1]
            anArray[j+1] = temp
        }
    }
}

print(anArray)

// **********
// * String revert inline
// **********

var myString = "abcefghij"

let counter = myString.characters.count / 2
var index = myString.startIndex
var index2 = myString.index(myString.endIndex, offsetBy: -1)
var indexTo = myString.index(myString.startIndex, offsetBy: counter)

while index != indexTo {
    let temp = myString[index]
    let temp2 = myString[index2]
    myString.replaceSubrange(index...index, with: String(temp2))
    myString.replaceSubrange(index2...index2, with: String(temp))
    index = myString.index(after: index)
    index2 = myString.index(before: index2)
}

print(myString)
