//Solution 1
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], k = input[1]

var cache: [[Int]] = Array(repeating: Array(repeating: -1, count: n+1), count: n+1)

func f(_ n: Int, _ k: Int) -> Int{
    if cache[n][k] != -1{
        return cache[n][k]
    }
    
    if k == 0 || n == k {
        cache[n][k] = 1
    }else{
        cache[n][k] = (f(n-1, k-1) + f(n-1, k)) % 10007
    }
    return cache[n][k]
}
print(f(n, k))

//Solution 2
let NK = readLine()!.split(separator: " ").map({ Int($0)! })
let (N, K) = (NK[0], NK[1])
var dp = Array(repeating: 1, count: N+1)

if N != K && K != 0 {  
    for i in 2...N {
        for j in (1..<i).reversed() {
            dp[j] = (dp[j] + dp[j-1]) % 10007
        }
    }
}
print(dp[K])
