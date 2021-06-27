import UIKit
import Foundation

//Given an array arr[] and size of array is n and one another key x, and give you a segment size k. The task is to find that the key x present in every segment of size k in arr[].

/*
 e.g: Input = [2,3,5,3,5,7,4,3,6]
 element = 3 // Searching Val
 k = 3 // segement size
 
 output = true
 */

func isElementPresent<T: Equatable>(in array: [T], element: T, segment: Int) -> Bool {
    var isAvailable = false
    
    //Using stride function to stride values with required segment
    //Using map to create array segments
    stride(from: array.startIndex, through: array.endIndex - 1, by: 3).map {
        let arrayVal = Array(array[$0..<Swift.min($0 + segment, array.count)])
        print("\($0) - \(arrayVal)")
        isAvailable = arrayVal.contains(element)
    }
    
    return isAvailable
}


let isAvailable = isElementPresent(in: [2,3,4,1,3,5,6,5,3,4], element: 3, segment: 3)
