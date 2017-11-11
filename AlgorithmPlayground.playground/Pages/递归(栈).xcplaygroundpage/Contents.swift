//: [Previous](@previous)
/*:
 
 * 递归指的是调用自己的函数。
 * 每个递归函数都有两个条件：基线条件和递归条件
 * 栈有两种操作:压入和弹出
 * 所有函数调用都进入调用栈
 * 调用栈可能很长, 这将占用大量的内存
 */

import Foundation

func fact(_ num: Int) -> Int {
    if num == 1 {
        return 1
    } else {
        return num * fact(num - 1)
    }
}

fact(5)

//: [Next](@next)
