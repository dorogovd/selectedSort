//
//  main.swift
//  a2selectedSort
//
//  Created by Dmitrii Dorogov on 20.11.2022.
//

import Foundation
    
func selectionSort(_ array: [Int]) {
    
    var internalArray = array
    print("""

SELECTION SORT - DOOSHNILA EDITION

default array = \(internalArray)

""")
    var smallestIndex = internalArray.startIndex
    var comparedIndex = internalArray.startIndex + 1
    
    printResult(numberOfIteration: 1)
    if  smallestIndex == comparedIndex {
        comparedIndex = 2
    }
    
    printResult(numberOfIteration: 1.1)
    if  smallestIndex == comparedIndex {
        comparedIndex = 3
    }

    printResult(numberOfIteration: 1.2)
    if  smallestIndex == comparedIndex {
        comparedIndex = 4
    }
    
    printResult(numberOfIteration: 1.3)
    
    internalArray.insert(internalArray[smallestIndex], at: 0)
    internalArray.remove(at: smallestIndex + 1)
    
    print("""
            1st cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 1
    comparedIndex = 2
    
    printResult(numberOfIteration: 2)
    if  smallestIndex == comparedIndex {
        comparedIndex = 3
    }

    printResult(numberOfIteration: 2.1)
    if  smallestIndex == comparedIndex {
        comparedIndex = 4
    }

    printResult(numberOfIteration: 2.2)
    
    internalArray.insert(internalArray[smallestIndex], at: 1)
    internalArray.remove(at: smallestIndex + 1)
    
    print("""
            2nd cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 2
    comparedIndex = 3
    
    printResult(numberOfIteration: 3)
    if  smallestIndex == comparedIndex {
        comparedIndex = 4
    }
    
    printResult(numberOfIteration: 3.1)
    
    internalArray.insert(internalArray[smallestIndex], at: 2)
    internalArray.remove(at: smallestIndex + 1)
    
    
    print("""
            3rd cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 3
    comparedIndex = 4
    
    printResult(numberOfIteration: 4.0)

    internalArray.insert(internalArray[smallestIndex], at: 3)
    internalArray.remove(at: smallestIndex + 1)
    
    
    print("""
            FINAL RESULT - \(internalArray)
            
            ARRAY IS SORTED
            
            """)
    
    func printResult(numberOfIteration: Double) {
        var result = internalArray[comparedIndex] < internalArray[smallestIndex]
        print("""
        ITERATION \(numberOfIteration) :
        compared numbers: \(internalArray[comparedIndex]) < \(internalArray[smallestIndex]) -> \(result)

        """)
        if result == true {
            smallestIndex = comparedIndex
        } else if comparedIndex == 4 && result == false {
             comparedIndex = smallestIndex + 1
        } else {
            comparedIndex += 1
        }
    }
}


var array = [10, 9, 2, 0, 6]
selectionSort(array)

//var array = [Int(item1), Int(item2), Int(item3), Int(item4), Int(item5)]



print("Enter your first number in array")
let item1 = readLine()
guard let item1 = Int(item1!) else {
    fatalError("It is not a number")
}
print("Enter your second number in array")
let item2 = readLine()
guard let item2 = Int(item2!) else {
    fatalError("It is not a number")
}
print("Enter your third number in array")
let item3 = readLine()
guard let item3 = Int(item3!) else {
    fatalError("It is not a number")
}
print("Enter your fourth number in array")
let item4 = readLine()
guard let item4 = Int(item4!) else {
    fatalError("It is not a number")
}
print("Enter your fifth number in array")
let item5 = readLine()
guard let item5 = Int(item5!) else {
    fatalError("It is not a number")
}
