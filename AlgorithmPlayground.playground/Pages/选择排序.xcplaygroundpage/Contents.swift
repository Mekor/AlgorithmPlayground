//: [Previous](@previous)

import Foundation
import UIKit

// 找出最小值
func findSmallest(_ arr: [Int]) ->(smallest: Int,smallindex:Int) {
    var smallest = arr[0]
    var smallindex = 0
    
    for (index, item) in arr.enumerated() {
        if item < smallest {
            smallest = item
            smallindex = index
        }
    }
    return (smallest,smallindex)
}

// 排序
func selectionSort(_ arr: [Int]) ->[Int] {
    var newArr = [Int]()
    var temp = arr
    while temp.count > 0 {
        let small = findSmallest(temp)
        let smallest = small.smallest
        newArr.append(smallest)
        temp.remove(at: small.smallindex)
    }
    return newArr
}

selectionSort([5, 3, 6, 2, 10])

//: [Next](@next)
