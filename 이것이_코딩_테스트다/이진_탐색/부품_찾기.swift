/*
  동빈이네 전자 매장에는 부품이 N개 있다. 각 부품은 정수 형태의 고유한 번호가 있다.
  어느 날 손님이 M개 종류의 부품을 대량으로 구매하겠다며 당일날 견적서를 요청했다.
  동빈이는 때를 놓치지 않고 손님이 문의한 부품 M개 종류를 모두 확인해서 견적서를 작성해야 한다.
  이때 가게 안에 부품이 모두 있는지 확인하는 프로그램을 작성해보자. 
*/

//Solution 1 - 이진탐색
func binary_search(_ arr: [Int], _ target: Int, _ start: Int, _ end: Int) -> Bool{
    var s = start, e = end
    while s <= e{
        var mid = (s+e)/2
        
        if arr[mid] == target{ return true }
        else if arr[mid] > target{ e = mid-1 }
        else { s = mid + 1 }
    }
    return false
}

var n = Int(readLine()!)!
var n_arr = readLine()!.split(separator: " ").map{Int(String($0))!}
n_arr = n_arr.sorted()

var m = Int(readLine()!)!
var m_arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in m_arr{
    binary_search(n_arr, i, 0, n-1) ? print("yse", terminator: " ") : print("no", terminator: " ")
}

//Solution 2 - 계수 정렬
var n = Int(readLine()!)!
var n_arr: [Int] = Array(repeating: 0, count: 1000001)

for i in readLine()!.split(separator: " ").map{Int(String($0))!}{
    n_arr[i] = 1
}

var m = Int(readLine()!)!
var m_arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in m_arr{
    if n_arr[i] == 1 { print("yes", terminator: " ") }
    else { print("no", terminator: " ") }
}

//Solution 3 - 집합 자료형
var n = Int(readLine()!)!
var n_arr = Set(readLine()!.split(separator: " ").map{Int(String($0))!})

var m = Int(readLine()!)!
var m_arr = readLine()!.split(separator: " ").map{Int(String($0))!}

for i in m_arr{
    if n_arr.contains(i) { print("yes", terminator: " ") }
    else { print("no", terminator: " ") }
}
