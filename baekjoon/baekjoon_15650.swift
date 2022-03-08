let array = readLine()!.split(separator: " ").map{Int(String($0))!}
var arr = [Int](repeating: 0, count: array[1])

func dfs(a : Int, depth: Int){
    if depth == array[1] {
        print(arr.map{String($0)}.joined(separator: " "))
        return
    }
    
    if a>array[0] {return}
    
    for i in a...array[0]{
            arr[depth] = i
            dfs(a: i+1, depth: depth + 1)
        }
}

dfs(a: 1, depth: 0)

//Solution2
let nm: [Int] = readLine()!.split(separator: " ").map { Int($0)! }

func makeSeries(_ n: Int, _ m: Int, _ start: Int, _ resultArr: [Int]) {
    if m == 0 {
        resultArr.forEach { print($0, terminator: " ") }
        print()
        return
    }
     
    for i in start ... n - m + 1 {
        var tmpArr: [Int] = resultArr
        tmpArr.append(i)
         
        makeSeries(n, m - 1, i + 1, tmpArr)
    }
}

makeSeries(nm[0], nm[1], 1, [])
