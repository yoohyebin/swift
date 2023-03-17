/*
 fibonacci(k)
 
 fibonacci value: fibonacci(k-1) + fibonacci(k-2)
 0 count: fibonacci(k-1)
 1 count: fibonacci(k)
 */

var dp = [Int](repeating: 0, count: 41)
dp[1] = 1
dp[2] = 1
for i in 3..<41{
    dp[i] = dp[i-1] + dp[i-2]
}
for _ in 0..<Int(readLine()!)!{
    var n = Int(readLine()!)!
    if n == 0{
        print("1 0")
    }
    else if n == 1{
        print("0 1")
    }
    else{
        print(dp[n-1],dp[n])
    }
}
