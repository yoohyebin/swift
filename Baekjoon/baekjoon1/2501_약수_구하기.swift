let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let k = input[1]

var divisors: [Int] = []

for i in 1...n {
    if n % i == 0 {
        divisors.append(i)
    }
}

if divisors.count >= k {
    print(divisors[k - 1])
} else {
    print(0)
}
