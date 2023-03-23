let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").enumerated().map{($0.offset, Int(String($0.element))!)}
var result = ""
var index = 0

while true {
    var temp = arr[index].1
    result += "\(arr.remove(at: index).0+1) "
    index += (temp > 0 ? temp-1 : temp)
    
    if arr.isEmpty {break}
    index = (index >= 0) ? index : arr.count + index % arr.count
    index %= arr.count
}
print(result)
