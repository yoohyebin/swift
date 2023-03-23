//Solution 1, 36ms
var n = Int(readLine()!)!
var queue: [Int] = Array(1...n)
var tmp = 0

if n == 1 { print(1) }
else{
    while true{
        queue[tmp] = 0
        queue.append(queue[tmp + 1])
        queue[tmp + 1] = 0
        if queue[queue.count - 2] == 0 { print(queue.last!); break }
        tmp += 2
    }
}

//Solution 2, 8ms, 큐로 풀지 않고 2의 제곱을 이용해서 품
let N = Int(readLine()!)!

var i = 1
while true {
    if N >= i , N < i*2 {
        break
    }else{
        i *= 2
    }
}
let remain = N-i
if remain == 0 {
    print(i)
}else {
    print(2*remain)
}
