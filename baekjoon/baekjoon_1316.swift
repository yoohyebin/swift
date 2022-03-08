var cnt = 0
for _ in 0..<Int(readLine()!)!{
    var s = readLine()!.map{String($0)}
    var c = [String]()
    var i = 1
    c.append(s[0])
     
    while i < s.count{
        if s[i-1] == s[i]{
            c.append(s[i])
            i += 1
        }
        else{
            if c.contains(s[i]) {break}
            else {
                c.append(s[i])
                i += 1
            }
        }
    }
    if i == s.count { cnt += 1 }
}
print(cnt)
