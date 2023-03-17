import Foundation
let n = Int(readLine()!)!
var chess: [Int] = Array(repeating: -1, count: n)
var answer = 0

func check(_ x: Int, _ y: Int) -> Bool{
    for i in 0..<x{
        if chess[i] == y || abs(x-i) - abs(y-chess[i]) == 0 { return false }
    }
    return true
}
func dfs(_ v: Int){
    if v == n{
        answer += 1
        return
    }
    for i in 0..<n{
        if check(v, i){
            chess[v] = i
            dfs(v+1)
            chess[v] = -1
        }
    }
}

dfs(0)
print(answer)
