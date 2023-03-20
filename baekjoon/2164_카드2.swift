//Solution 1
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

//Solution 2
var input = Int(readLine()!)!
if input == 1 {
    print("1")
} else {
    var arr = Array(1...input)
    var head = 0
    var count = input
    while count > 1 {
        head += 1
        count -= 1
        arr.append(arr[head])
        head += 1
    }
    print(arr.popLast()!)
}
