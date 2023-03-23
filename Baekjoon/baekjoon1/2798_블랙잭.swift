//for문 중첩해서 모든 경우의수 더함
var a = readLine()!.split(separator: " ").map{Int(String($0))!}
var b = readLine()!.split(separator: " ").map{Int(String($0))!}
var c = 0

for i in 0...a[0]-3{
    for j in i+1...a[0]-2{
        for k in j+1...a[0]-1{
            var sum = b[i] + b[j] + b[k]
            if sum <= a[1]{c = max(c,sum)}
        }
    }
}
print(c)
