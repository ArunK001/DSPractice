//: [Previous](@previous)

import Foundation

extension Array where Element: BinaryInteger {
    func getLargestAndSmallestNumber() -> (largest: Int, smallest: Int){
        var min, max: Int?
        
        for case let val as Int in self {
            if (val > max ?? 0) || max == nil {
                max = val
            }
            
            if (val < min ?? 0) || min == nil {
                min = val
            }
        }
        
        return (max ?? 0, min ?? 0)
    }
    
    func getMaxAndMin() -> (max: Int, min: Int) {
        let max: Int = self.sorted(by: {$0 > $1}).first as? Int ?? 0
        let min: Int = self.sorted(by: {$0 < $1}).first as? Int ?? 0
        
        return (max, min)
    }
}

[2,3,12,4,5,6,2,6,7,3,3,5,9,10].getLargestAndSmallestNumber()

[2,3,12,4,5,6,2,6,7,3,3,5,9,10].getMaxAndMin()
