//: [Previous](@previous)

/*:
 狄克斯特拉算法包含4个步骤:
 1. 找出最便宜的节点,即可在最短时间内前往的节点
 2. 对于该节点的邻居,检查是否有前往他们的更短的路径,如果有,就更新其开销
 3. 重复这个过程,直到对图中的每个节点都这样做了
 4. 计算最终路径
 */
import Foundation

// 感觉这段代码用OC写比较合适...swift我要看下

var graph: Dictionary = [String: Any]()
graph["you"] = ["alice", "bob", "claire"]


var start = [String: Int]()
start["a"] = 6
start["b"] = 2
graph["start"] = start


var a = [String: Int]()
a["fin"] = 1
var b = [String: Int]()
b["a"] = 3
b["fin"] = 5

graph["a"] = a
graph["b"] = b
graph["fin"] = [String: Int]()






//: [Next](@next)
