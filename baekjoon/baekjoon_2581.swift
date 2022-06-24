/*
  자연수 M과 N이 주어질 때 M이상 N이하의 자연수 중 소수인 것을 모두 골라 이들 소수의 합과 최솟값을 찾는 프로그램을 작성하시오.
*/

let maxNumber: Int = 10000
var numbers: [Bool] = [Bool](repeating: true, count: maxNumber + 1)
numbers[1] = false
Array(2 ... maxNumber / 2).forEach {
    var count: Int = 2
    while $0 * count <= maxNumber {
        numbers[$0 * count] = false
        count += 1
    }
}

let m: Int = Int(readLine()!)!
let n: Int = Int(readLine()!)!
var primes: [Int] = []

Array(m ... n).forEach {
    if numbers[$0] == true {
        primes.append($0)
    }
}

primes.isEmpty ? print(-1) : print("\(primes.reduce(0) { $0 + $1 })\n\(primes[0])")
