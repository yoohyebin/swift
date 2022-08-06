let n = Int(readLine()!)!
var count = [Int](repeating: 0, count: n+2)
count[1] = 1
count[2] = 2

if n > 2 {
    for i in 3...n {
        count[i] = (count[i-2] + count[i-1]) % 10007
    }
}
print(count[n])
