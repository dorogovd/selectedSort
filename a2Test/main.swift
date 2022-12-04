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
    
    let idx0 = printResult(numberOfIteration: 1, smallestIndex: smallestIndex)
    if  idx0 == comparedIndex {
        comparedIndex = 2
    }
    
    let idx1 = printResult(numberOfIteration: 1.1, smallestIndex: idx0)
    if  idx1 == comparedIndex {
        comparedIndex = 3
    }

    let idx2 = printResult(numberOfIteration: 1.2, smallestIndex: idx1)
    if  idx2 == comparedIndex {
        comparedIndex = 4
    }
    
    let idx3 = printResult(numberOfIteration: 1.3, smallestIndex: idx2)
    
    internalArray.insert(internalArray[idx3], at: 0)
    internalArray.remove(at: idx3 + 1)
    
    print("""
            1st cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 1
    comparedIndex = 2
    
    let idx4 = printResult(numberOfIteration: 2, smallestIndex: smallestIndex)
    if  idx4 == comparedIndex {
        comparedIndex = 3
    }

    let idx5 = printResult(numberOfIteration: 2.1, smallestIndex: idx4)
    if  idx5 == comparedIndex {
        comparedIndex = 4
    }

    let idx6 = printResult(numberOfIteration: 2.2, smallestIndex: idx5)
    
    internalArray.insert(internalArray[idx6], at: 1)
    internalArray.remove(at: idx6 + 1)
    
    print("""
            2nd cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 2
    comparedIndex = 3
    
    let idx7 = printResult(numberOfIteration: 3, smallestIndex: smallestIndex)
    if  idx7 == comparedIndex {
        comparedIndex = 4
    }
    
    let idx8 = printResult(numberOfIteration: 3.1, smallestIndex: idx7)
    
    internalArray.insert(internalArray[idx8], at: 2)
    internalArray.remove(at: idx8 + 1)
    
    
    print("""
            3rd cycle result - \(internalArray)
            
            """)
    
    smallestIndex = internalArray.startIndex + 3
    comparedIndex = 4
    
    let idx9 = printResult(numberOfIteration: 4.0, smallestIndex: smallestIndex)

    internalArray.insert(internalArray[idx9], at: 3)
    internalArray.remove(at: idx9 + 1)
    
    
    print("""
            FINAL RESULT - \(internalArray)
            
            ARRAY IS SORTED
            
            """)
    
    func printResult(numberOfIteration: Double, smallestIndex: Int) -> Int {
        var result = internalArray[comparedIndex] < internalArray[smallestIndex]
        var tempSmallestIndex = smallestIndex
   //     var tempComparedIndex = comparedIndex
        
        print("""
        ITERATION \(numberOfIteration) :
        compared numbers: \(internalArray[comparedIndex]) < \(internalArray[tempSmallestIndex]) -> \(result)

        """)
        if result == true {
            tempSmallestIndex = comparedIndex
        } else if comparedIndex == 4 && result == false {
             comparedIndex = tempSmallestIndex + 1
        } else {
            comparedIndex += 1
        }
        return tempSmallestIndex
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
