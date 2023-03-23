//Solution 1
let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let n = input[0], m = input[1]
var s = Set<String>()
var stringArr = [String]()
var answer = 0

for _ in 0..<n{
    s.insert(readLine()!)
}
for _ in 0..<m{
    stringArr.append(readLine()!)
}

for i in stringArr{
    if s.contains(i){
        answer += 1
    }
}
print(answer)

//Solution 2
let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]
var result = 0

var dict = [String: Bool]()

for _ in 0..<N {
    dict[readLine()!] = true
}

for _ in 0..<M {
    if dict[readLine()!] == true {
        result += 1
    }
}

print(result)
