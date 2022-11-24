import Foundation

func solution(_ n:Int) -> [Int] {
    var arr = Array(repeating: true, count: n+1)
    var primes = [Int]()
    
    for i in 2...n {
        if arr[i] == true {
            for j in stride(from: i, through: n, by: i) {
                    arr[j] = false
            }
            primes.append(i)
        }
    }
    return primes.contains(n) ? [n] : primes.filter{n%$0 == 0}
}
