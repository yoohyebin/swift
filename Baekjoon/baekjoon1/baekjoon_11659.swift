let data = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = data[0], m = data[1]

let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var sums: [Int] = [0]
var sum = 0

arr.forEach{
    sum += $0
    sums.append(sum)
}
for _ in 0..<m{
    let input = readLine()!.split(separator: " ").map{Int(String($0))!}
    print("\(sums[input[1]] - sums[input[0]-1])")
}
