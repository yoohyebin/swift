let N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

var dp = Array(repeating: 1, count: N+1)

for i in 0..<N{
    for j in 0..<i{
        if arr[i] > arr[j]{
            dp[i] = max(dp[i], dp[j]+1)
        }
    }
}

var maxdp = dp.max()!
var re = [Int]()

print("\(maxdp)")
for i in stride(from: N-1, through: 0, by: -1){
    if dp[i] == maxdp{
        re.append(arr[i])
        maxdp -= 1
    }
}
print(re.reversed().map{String($0)}.joined(separator: " "))
