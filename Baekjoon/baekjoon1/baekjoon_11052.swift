let N = Int(readLine()!)!
let price = readLine()!.split(separator: " ").map{ Int($0)! }
var sum = [Int](repeating: 0, count: N+1)

for i in 1...N {
    for j in 0..<i {
        sum[i] = max(sum[i], price[j] + sum[i-j-1])
    }
}
print(sum[N])
