let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var M = input[0], N = input[1]

var arr = Array(repeating: true, count:  1000001)
arr[1] = false

for i in 2...1000{ //sqrt(n)
    if arr[i]{
        for k in stride(from: i+i, to: 1000001, by: i){
            arr[k] = false
        }
    }
}

var re = ""
for i in M...N{
    if arr[i]{
        re += "\(i)\n"
    }
}
print(re)
