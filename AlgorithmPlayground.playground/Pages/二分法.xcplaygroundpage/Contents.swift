//: [Previous](@previous)

import Foundation


/// 二分法查找
///
/// - Parameters:
///   - array: 需要查找的数组
///   - item: 需要查找的元素
/// - Returns: 是否包含元素
func binarySearch(with array:[Int],item:Int) -> Bool{
    var low = 0
    var height = array.count - 1
    
    while low <= height {
        // 取中间index
        let mid = (low + height) / 2
        // 取中间值
        let guess = array[mid]
        // 如果正好相等
        if guess == item {
            return true
        }
        // 如果小了
        if guess < item {
            low = mid + 1
        }
        // 如果大了
        if guess > item {
            height = mid - 1
        }
    }
    return false
}
// 测试
var arr = [Int]()
for i in 0..<100 {
    arr.append(i)
}

let result = binarySearch(with: arr, item: 20)
print(result)

//: [Next](@next)
