//: [Previous](@previous)




/*:
 分而治之(divide and conquer, D&C) -- 一种注明的递归式问题解决方法

 欧几里得算法: 适用于这小块地的最大方块，也是适用于整块地的最大方块
 
 **快速排序:**
 例如: 3 5 2 1 4
 假设将第一个数字3作为基准值将得到2个子数组  2 1 <3> 5 4
 然后在次将 21 与 54 排序 得到  1 2 <3> 4 5
 
 */
import Foundation

func quickSort(_ array:[Int]) -> [Int] {
    if array.count < 2 {
        return array    // 基线条件:为空或者只包含一个元素的数组是`有序`的
    }
    
    let pivot = array[0] // 递归条件
    // 获取左边小数组
    var less = [Int]()
    var greater = [Int]()
    for i in array {
        if i < pivot {
            less.append(i)
        }else if i > pivot {
            greater.append(i)
        }
    }
    // 获取右边大数组
    let sortless = quickSort(less)
    let sortgreater = quickSort(greater)
    
    return sortless + [pivot] + sortgreater
}

quickSort([10,5,2,3])


//: [Next](@next)
