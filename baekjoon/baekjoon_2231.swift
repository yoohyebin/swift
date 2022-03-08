let n = Int(readLine()!)!
var re = 0

for i in n-String(n).count*9...n{
    var num = i
    var sum = 0
     
    while num > 0{
        sum += num%10
        num /= 10
    }
    if sum + i == n{
        re = i
        break
    }
}
print(re)
