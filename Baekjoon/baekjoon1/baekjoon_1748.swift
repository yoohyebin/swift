var n = Int(readLine()!)!
var cnt = 0
var i = 1

while i <= n{
    cnt += n-i+1
    i *= 10
}

print("\(cnt)")
