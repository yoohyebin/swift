import Foundation
let n = Int(readLine()!)!
var num = [Int]()
var dict = [Int: Int]()

for i in 0..<n{
    num.append(Int(readLine()!)!)
    dict[num[i], default: 0] += 1
}

print(Int(round(Double(num.reduce(0,+))/Double(n))))

num.sort()
print(num[num.count/2])

let maxValue = dict.max(by: {$0.value < $1.value})!.value
let value = dict.filter{$0.value == maxValue}.keys.sorted()
value.count>1 ? print(value[1]) : print(value[0])

print(num.max()!-num.min()!)
