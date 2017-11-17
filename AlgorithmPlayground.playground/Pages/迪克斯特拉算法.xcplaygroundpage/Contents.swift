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
// 邻居
graph["you"] = ["alice", "bob", "claire"]

// 边的权重
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

// 每个节点的开销
var costs = [String: Int]()
costs["a"] = 6
costs["b"] = 2
costs["fin"] = 1000

// 父节点
var parents = [String : String]()
parents["a"] = "start"
parents["b"] = "start"
parents["fin"] = ""


// 记录处理过的节点
var processed = [String]()

func findLowestCostNode(_ costs: [String : Int]) -> String {
    
    var lowest_cost = 1000
    var lowest_cost_node = ""
    for node in costs.keys {
        let cost = costs[node]!
        if cost < lowest_cost && !processed.contains(node) {
            lowest_cost = cost
            lowest_cost_node = node
        }
    }
    
    return lowest_cost_node
}

var node = findLowestCostNode(costs) // 在未处理的节点中找出开销最小的节点

while node != "" {   // 这个while循环在所有节点都被处理后结束
    let cost = costs[node] ?? 0
    guard let temp = graph[node],let neighbors = temp as? Dictionary<String, Int> else {
        continue
    }
    
    for n in neighbors.keys {   // 遍历当前循环的所有邻居
        let newCost = cost + neighbors[n]!
        if costs[n]! > newCost {  // 如果经当前节点前往该邻居更近
            costs[n] = newCost      // 就更新该邻居的开销
            parents[n] = node       //同时将该邻居的父节点设置为当前节点
        }
    }
    
    processed.append(node)          // 将当前节点标记为处理过
    node = findLowestCostNode(costs) // 找出接下来要处理的节点,并循环
}

print(parents)
print(costs)



//: [Next](@next)
