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