var n = readLine()!.split(separator: " ").map{Int(String($0))!}
var day = (n[2] - n[1]) / (n[0] - n[1])

if (n[2] - n[1])%(n[0] - n[1]) != 0{day += 1}
print(day)
