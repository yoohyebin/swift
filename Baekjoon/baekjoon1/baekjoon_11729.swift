import Foundation

func hanoi(_ n: Int, _ start: Int, _ mid: Int, _ end: Int){
    if n == 1{
        print("\(start) \(end)")
        return
    }
    hanoi(n-1, start, end, mid)
    print("\(start) \(end)")
    hanoi(n-1, mid, start, end)
}

let n = Int(readLine()!)!
print("\(pow(2, n)-1)")

hanoi(n,1,2,3)

//Solution 2
var n = Int(readLine()!)!
var cnt = 1
var res = ""
func hanoi(_ n: Int, _ start: Int, _ via: Int, _ to: Int) {
    if n == 1 {
        res += "\(start) \(to)\n"
    } else {
        hanoi(n-1, start, to, via)
        res += "\(start) \(to)\n"
        hanoi(n-1, via, start, to)
    }
}
func solution() {
    for _ in 0 ..< n - 1 {
        cnt = cnt * 2 + 1
    }
    print(cnt)
    hanoi(n, 1, 2, 3)
    res.removeLast()
    print(res)
}
solution()
