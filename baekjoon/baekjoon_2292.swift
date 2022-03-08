var n = Int(readLine()!)!
var k = 1, sum = 1

for i in 1...n{
    if n <= sum{
        print(k)
        break
    }
    sum += 6*i
    k += 1
}
