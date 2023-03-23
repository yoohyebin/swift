//Solution1
let n = Double(readLine()!)!
var array = readLine()!.split(separator: " ").map{Double(String($0))!}
let max = array.max()!
var sum = 0.0

for i in 0..<Int(n){sum += (array[i]/max)*100}
print(sum/n)

//Solution2
var num = Double(readLine()!)!
var scores = readLine()!.components(separatedBy: " ").map{Double($0)!}
var max = scores.max()!
var modifiedScores = scores.map{($0/max)*100}.reduce(0, {$0 + $1})

print(modifiedScores)
print(modifiedScores/num)
