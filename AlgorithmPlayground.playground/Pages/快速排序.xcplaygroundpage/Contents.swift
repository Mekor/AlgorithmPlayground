//: [Previous](@previous)




/*:
 *~分而治之~*(divide and conquer, D&C) -- 一种注明的递归式问题解决方法

 欧几里得算法: 适用于这小块地的最大方块，也是适用于整块地的最大方块
 
 ## **快速排序:**
 例如: 3 5 2 1 4
 假设将第一个数字3作为基准值将得到2个子数组  2 1 <3> 5 4
 然后在次将 21 与 54 排序 得到  1 2 <3> 4 5
 
 
 ## **平均情况和最糟情况**
 
 快速排序的性能高度依赖于你选择的基准值. 假设你总是将第一个元素用作基准值,且要处理的数组是有序的.由于快速排序算法不检查输入数组是否有序,因此他依然尝试对其进行排序.
 举个🌰:
 1 2 3 4 5 6 7 8 9 10
 如果将第一个元素做为基准值则
  1 2 3 4 5 6 7 8 9 10 --------------------
 [] <1> 2 3 4 5 6 7 8 9 10                |
     [] <2> 3 4 5 6 7 8 9 10              |
        [] <3>  4 5 6 7 8 9 10            |
            [] <4> 5 6 7 8 9 10           |
               [] <5> 6 7 8 9 10          } 10
                  [] <6> 7 8 9 10         |
                     [] <7> 8 9 10        |
                        [] <8> 9 10       |
                           [] <9> 10 -----
 
 
 ##小结:
 * D&C将问题逐步分解。使用D&C处理列表时，基线条件很可能是空数组或只包含一个元素的数组。
 
 * 实现快速排序时，请随机地选择用作基准值的元素。快速排序的平均运行时间为O (n log n )。
 
 * 大O表示法中的常量有时候事关重大，这就是快速排序比合并排序快的原因所在。
 
 * 比较简单查找和二分查找时，常量几乎无关紧要，因为列表很长时，O (log n )的速度比O (n )快得多。
 
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
