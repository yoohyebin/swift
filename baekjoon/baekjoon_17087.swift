func gcd(_ a: Int, _ b: Int) -> Int {
    let mod: Int = a % b
    return 0 == mod ? min(a, b) : gcd(b, mod)
}

let input = readLine()!.split(separator: " ").map{Int(String($0))!}
var N = input[0], S = input[1]
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in 0..<N{
    arr[i] = abs(arr[i] - S)
}

var re = arr[0]
for i in 1..<N{
    re = gcd(re, arr[i])
}
print("\(re)")
