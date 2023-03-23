var arr = readLine()!.split(separator: " ").map{Int(String($0))!}
var E = arr[0], S = arr[1], M = arr[2]
var e = 1, s = 1, m = 1
var cnt = 1

while (E != e || S != s || M != m){
    e += 1
    s += 1
    m += 1
    
    if e >= 16{ e = 1 }
    if s >= 29{ s = 1 }
    if m >= 20{ m = 1 }
    cnt += 1
}
print(cnt)
