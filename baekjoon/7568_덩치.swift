let n = Int(readLine()!)!
var people = Array(repeating: Array(repeating: 0, count: 2), count: n)
var rank = Array(repeating: 1, count: n)

for i in 0..<n{
    people[i] = readLine()!.split(separator: " ").map{Int(String($0))!}
}

for i in 0..<n{
    for j in 0..<n{
        if people[i][0] < people[j][0] && people[i][1] < people[j][1]{
            rank[i] += 1
        }
    }
}
rank.forEach{element in
    print(element, terminator: " ")
}
