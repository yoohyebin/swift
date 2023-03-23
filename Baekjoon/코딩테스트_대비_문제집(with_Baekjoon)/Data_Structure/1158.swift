//12ms
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = Array(1...input[0])
var result = [Int]()
var index = 0

for _ in 0..<input[0] {
    index = (index+input[1]-1)%arr.count
    result.append(arr.remove(at: index))
}

print("<\(result.map{String($0)}.joined(separator: ", "))>")
