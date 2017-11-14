//: [Previous](@previous)

/*:
 > 解决最短路径问题的算法被称之为广度优先搜索
 
 例如: 如何从双子峰前往金门大桥,需要两个步骤.
 1. 使用图来建立问题模型
 2. 使用广度优先搜索解决问题
 
 具体流程可以使用流程图
 */
import Foundation
var graph:[String: [String]] = [:]
var queue:[String] = []

graph["you"] = ["alice", "bob", "claire"]
graph["bob"] = ["anuj", "peggy"]
graph["alice"] = ["peggy"]
graph["claire"] = ["thom", "jonny"]
graph["anuj"] = []
graph["peggy"] = []
graph["thom"] = []
graph["jonny"] = []

let yourFriends = graph["you"] ?? []
queue.append(contentsOf: yourFriends)
func pop(with queue:inout [String]) -> String {
    if queue.count > 0 {
        let value = queue[0]
        queue.remove(at: 0)
        return value
    }
    return ""
}

/// 判断一个人是否是经销商
func personIsSeller(with name: String) -> Bool {
    if name == "thom" {
        return true
    }
    return false
}

func containSeller() -> Bool {
    while queue.count > 0 {
        let person = pop(with: &queue)
        if personIsSeller(with: person) {
            print(person, "is a mango seller!")
            return true
        }else {
            let value = graph[person] ?? []
            queue += value
        }
    }
    return false
}


containSeller()




//: [Next](@next)
