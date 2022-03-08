var x = Int(readLine()!)!
var i = 1

while x > i{
    x -= i
    i += 1
}

if i%2 == 1 {print("\(i + 1 - x)/\(x)")}
else {print("\(x)/\(i + 1 - x)")}
