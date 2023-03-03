//Solution 1
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    let map = number.map{String($0)}
    var stack = [String]()
    var count = 0
    for i in 0..<number.count{
        while count < k && !stack.isEmpty && stack.last! < map[i] {
            stack.removeLast()
            count += 1
        }

        if count >= k {
            stack.append(contentsOf: map[i...])
            break
        }else{
            stack.append(map[i])
        }
    }
    return String(stack.joined().prefix(number.count-k))
}

//Solution 2
func solution(_ number: String, _ k: Int) -> String {
    var result: [Int] = []
    var count: Int = 0

    Array(number).compactMap { Int(String($0)) }.forEach { item in
        while count < k {
            if let last = result.last, last < item {
                result.popLast()
                count += 1
            } else {
                break
            }
        }
        result.append(item)
    }

    return result[0..<number.count-k].map { "\($0)" }.joined()
}
