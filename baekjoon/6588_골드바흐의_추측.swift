var arr = Array(repeating: true, count:  1000001)

for i in 2..<1001{
    if arr[i]{
        for k in stride(from: i+i, to: 1000001, by: i){
            arr[k] = false
        }
    }
}

while true{
    var n = Int(readLine()!)!
    var flag = false
    if n == 0 {break}
    
    for  i in 3...arr.count{
        if arr[i] && arr[n-i]{
            print("\(n) = \(i) + \(n-i)")
            flag = true
            break
        }
    }
    if flag == false {print("Goldbach's conjecture is wrong.")}
}
