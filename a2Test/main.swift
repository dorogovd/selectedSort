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
    
    let idx0 = defineIndexes(numberOfIteration: 1, indexes: indexes, equalsToValue: 2, internalArray: internalArray)
    
    let idx1 = defineIndexes(numberOfIteration: 1.1, indexes: idx0, equalsToValue: 3, internalArray: internalArray)

    let idx2 = defineIndexes(numberOfIteration: 1.2, indexes: idx1, equalsToValue: 4, internalArray: internalArray)

    let idx3 = defineIndexes(numberOfIteration: 1.3, indexes: idx2, equalsToValue: 2, internalArray: internalArray)

    internalArray.insert(internalArray[idx3.smallestIndex], at: 0)
    internalArray.remove(at: idx3.smallestIndex + 1)

    print("1st cycle result - \(internalArray)\n")

    indexes.smallestIndex = internalArray.startIndex + 1
    indexes.comparedIndex = 2

    let idx4 = defineIndexes(numberOfIteration: 2, indexes: indexes, equalsToValue: 3, internalArray: internalArray)

    let idx5 = defineIndexes(numberOfIteration: 2.1, indexes: idx4, equalsToValue: 4, internalArray: internalArray)

    let idx6 = defineIndexes(numberOfIteration: 2.2, indexes: idx5, equalsToValue: 3, internalArray: internalArray)

    internalArray.insert(internalArray[idx6.smallestIndex], at: 1)
    internalArray.remove(at: idx6.smallestIndex + 1)

    print("2nd cycle result - \(internalArray)\n")

    indexes.smallestIndex = internalArray.startIndex + 2
    indexes.comparedIndex = 3

    let idx7 = defineIndexes(numberOfIteration: 3, indexes: indexes, equalsToValue: 4, internalArray: internalArray)

    let idx8 = defineIndexes(numberOfIteration: 3.1, indexes: idx7, equalsToValue: 4, internalArray: internalArray)
    
    internalArray.insert(internalArray[idx8.smallestIndex], at: 2)
    internalArray.remove(at: idx8.smallestIndex + 1)
    
    print("3rd cycle result - \(internalArray)\n")
    
    indexes.smallestIndex = internalArray.startIndex + 3
    indexes.comparedIndex = 4
    
    let idx9 = defineIndexes(numberOfIteration: 4.0, indexes: indexes, equalsToValue: 0, internalArray: internalArray)

    internalArray.insert(internalArray[idx9.smallestIndex], at: 3)
    internalArray.remove(at: idx9.smallestIndex + 1)
    
    print("FINAL RESULT - \(internalArray)\n \nARRAY IS SORTED\n")
}

func defineIndexes(numberOfIteration: Double, indexes: Indexes, equalsToValue: Int, internalArray: [Int]) -> Indexes {

    let result = internalArray[indexes.comparedIndex] < internalArray[indexes.smallestIndex]
    var tempSmallestIndex = indexes.smallestIndex
    var tempComparedIndex = indexes.comparedIndex
    
    print("ITERATION \(numberOfIteration): compared numbers: \(internalArray[indexes.comparedIndex]) < \(internalArray[tempSmallestIndex]) -> \(result)")
    if result == true {
        print("Smallest number found!\n")
        tempSmallestIndex = indexes.comparedIndex
        tempComparedIndex = equalsToValue
    } else if indexes.comparedIndex == 4 && result == false {
        tempComparedIndex = tempSmallestIndex + 1
        print("Compared number is changed...\n")
    } else {
        tempComparedIndex += 1
        print("Compared number is changed...\n")
    }
    
    return Indexes(smallestIndex: tempSmallestIndex, comparedIndex: tempComparedIndex)
}

//func createArray(_: Int) -> [Int] {
//    var array = Array<Int>()
//    for _ in 0...4 {
func createArray(_ numbers: Int) -> [Int] {
        var array = Array<Int>()
        for _ in 0...numbers - 1 {
        print("Enter a number:")
        let item = readLine()
        array.append(Int(item!)!)
        guard Int(item!) != nil else {
        fatalError("It is not a number")
        }
    }
    
    return array
}

selectionSort(createArray(10))
    
//array examples:
//var array = [3,1,88,4,0]
//var array = [1,3,6,2,10]
//var array = [5, 3, 6, 2, 10]
//var array = [1, 2, 5, 0, 9]
//var array = [10, 9, 2, 0, 6]
