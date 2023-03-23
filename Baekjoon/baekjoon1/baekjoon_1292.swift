var input = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [Int]()
var  i = 1

while arr.count <= input[1]{
    arr.append(contentsOf: [Int](repeating: i, count: i))
    i += 1
}

print(arr[input[0]-1...input[1]-1].reduce(0, +))
