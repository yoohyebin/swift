//Solution1
var c = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var s = readLine()!.map{String($0)}
var i = 0, cnt = 0

while i < s.count{
    if (i < s.count-1) {
        var two_word = s[i] + s[i+1]
        
        if two_word == "dz", i < s.count - 2, s[i+2] == "=" { i += 3 }
        else if c.contains(two_word){ i += 2 }
        else {i += 1}
    }else { i += 1}
    cnt += 1
}
print(cnt)

//Solution2
import Foundation

var n = readLine()!
let m = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
for i in 0..<m.count {n = n.replacingOccurrences(of: m[i], with: "a")}
print(n.count)
