//Soltuion 1
let n = Int(readLine()!)!
var nArr = readLine()!.split(separator: " ").map{Int(String($0))!}
let m = Int(readLine()!)!
let mArr = readLine()!.split(separator: " ").map{Int(String($0))!}
var re = [String]()

nArr.sort()

for i in mArr{
    binarySearch(0, n-1, i, nArr) ? re.append("1") : re.append("0")
}
print(re.joined(separator: " "))

func binarySearch(_ left: Int, _ right: Int, _ number: Int, _ arr: [Int]) -> Bool{
    var re = false
    if (left > right) {return false}
    
    let mid: Int = (left + right)/2
    if arr[mid] > number{
        re = binarySearch(left, mid-1, number, arr)
    }else if arr[mid] < number{
        re = binarySearch(mid+1, right, number, arr)
    }else{
        return true
    }
    return re
}

//Solution 2
let _ = readLine()
let store = Set(readLine()!.split { $0 == " " }.map { Int($0)! } )

var ret = ""
let _ = readLine()
readLine()!.split { $0 == " " }.map { Int($0)! }.forEach {
  ret += store.contains($0) ? "1 " : "0 "
}
print(ret)
