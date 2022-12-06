//
//  main.swift
//  a2selectedSort
//
//  Created by Dmitrii Dorogov on 20.11.2022.
//

import Foundation
    
func selectionSort(_ array: [Int]) {
    
    var internalArray = array
    print("\nSELECTION SORT - DOOSHNILA EDITION\n \ndefault array = \(internalArray)\n")
    
    let indexes = Indexes(
        smallestIndex: internalArray.startIndex,
        comparedIndex: internalArray.startIndex + 1
    )
    
    let idx0 = sortLogicAndPrintResult(numberOfIteration: 1, smallestIndex: indexes.smallestIndex, comparedIndex: indexes.comparedIndex, internalArray: internalArray)
    
    if  idx0.smallestIndex == idx0.comparedIndex {
        idx0.comparedIndex = 2
    }
    
    let idx1 = sortLogicAndPrintResult(numberOfIteration: 1.1, smallestIndex: idx0.smallestIndex, comparedIndex: idx0.comparedIndex, internalArray: internalArray)
    
    if  idx1.smallestIndex == idx1.comparedIndex {
        idx1.comparedIndex = 3
    }

    let idx2 = sortLogicAndPrintResult(numberOfIteration: 1.2, smallestIndex: idx1.smallestIndex, comparedIndex: idx1.comparedIndex, internalArray: internalArray)
    if  idx2.smallestIndex == idx2.comparedIndex {
        idx2.comparedIndex = 4
    }

    let idx3 = sortLogicAndPrintResult(numberOfIteration: 1.3, smallestIndex: idx2.smallestIndex, comparedIndex: idx2.comparedIndex, internalArray: internalArray)

    internalArray.insert(internalArray[idx3.smallestIndex], at: 0)
    internalArray.remove(at: idx3.smallestIndex + 1)

    print("1st cycle result - \(internalArray)\n")

    indexes.smallestIndex = internalArray.startIndex + 1
    indexes.comparedIndex = 2

    let idx4 = sortLogicAndPrintResult(numberOfIteration: 2, smallestIndex: indexes.smallestIndex, comparedIndex: indexes.comparedIndex, internalArray: internalArray)
    if  idx4.smallestIndex == idx4.comparedIndex {
        idx4.comparedIndex = 3
    }

    let idx5 = sortLogicAndPrintResult(numberOfIteration: 2.1, smallestIndex: idx4.smallestIndex, comparedIndex: idx4.comparedIndex, internalArray: internalArray)
    
    if  idx5.smallestIndex == idx5.comparedIndex {
        idx5.comparedIndex = 4
    }

    let idx6 = sortLogicAndPrintResult(numberOfIteration: 2.2, smallestIndex: idx5.smallestIndex, comparedIndex: idx5.comparedIndex, internalArray: internalArray)

    internalArray.insert(internalArray[idx6.smallestIndex], at: 1)
    internalArray.remove(at: idx6.smallestIndex + 1)

    print("2nd cycle result - \(internalArray)\n")

    indexes.smallestIndex = internalArray.startIndex + 2
    indexes.comparedIndex = 3

    let idx7 = sortLogicAndPrintResult(numberOfIteration: 3, smallestIndex: indexes.smallestIndex, comparedIndex: indexes.comparedIndex, internalArray: internalArray)
    
    if  idx7.smallestIndex == idx7.comparedIndex {
        idx7.comparedIndex = 4
    }

    let idx8 = sortLogicAndPrintResult(numberOfIteration: 3.1, smallestIndex: idx7.smallestIndex, comparedIndex: idx7.comparedIndex, internalArray: internalArray)
    
    internalArray.insert(internalArray[idx8.smallestIndex], at: 2)
    internalArray.remove(at: idx8.smallestIndex + 1)
    
    print("3rd cycle result - \(internalArray)\n")
    
    indexes.smallestIndex = internalArray.startIndex + 3
    indexes.comparedIndex = 4
    
    let idx9 = sortLogicAndPrintResult(numberOfIteration: 4.0, smallestIndex: indexes.smallestIndex, comparedIndex: indexes.comparedIndex, internalArray: internalArray)

    internalArray.insert(internalArray[idx9.smallestIndex], at: 3)
    internalArray.remove(at: idx9.smallestIndex + 1)
    
    print("FINAL RESULT - \(internalArray)\n \nARRAY IS SORTED\n")
}

func sortLogicAndPrintResult(numberOfIteration: Double, smallestIndex: Int, comparedIndex: Int, internalArray: [Int]) -> Indexes {

    let result = internalArray[comparedIndex] < internalArray[smallestIndex]
    var tempSmallestIndex = smallestIndex
    var tempComparedIndex = comparedIndex

    print("""
    ITERATION \(numberOfIteration) :
    compared numbers: \(internalArray[comparedIndex]) < \(internalArray[tempSmallestIndex]) -> \(result)

    """)
    if result == true {
        tempSmallestIndex = comparedIndex
    } else if comparedIndex == 4 && result == false {
        tempComparedIndex = tempSmallestIndex + 1
    } else {
        tempComparedIndex += 1
    }
    
    return Indexes(smallestIndex: tempSmallestIndex, comparedIndex: tempComparedIndex)
}

var array = Array<Int>()
print("Create an array of 5 numbers.")
for _ in 0...4 {
    print("\nEnter a number:")
    let item = readLine()
    array.append(Int(item!)!)
    guard Int(item!) != nil else {
        fatalError("It is not a number")
    }
}
    selectionSort(array)
    
    //var array = [3,1,88,4,0]
    //var array = [1,3,6,2,10]
    //var array = [5, 3, 6, 2, 10]
    //var array = [1, 2, 5, 0, 9]
    //var array = [10, 9, 2, 0, 6]

// var array = [Int(item1), Int(item2), Int(item3), Int(item4), Int(item5)]
