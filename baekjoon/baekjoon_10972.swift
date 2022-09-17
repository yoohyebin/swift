var N = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map{Int(String($0))!}

func solution(){
    if N != 1{
        for i in (1...N-1).reversed(){
            if arr[i-1] < arr[i]{
                for j in (1...N-1).reversed(){
                    if arr[i-1] < arr[j]{
                        arr.swapAt(i-1, j)
                        arr = arr[..<i] + arr[i...].sorted()
                        print(arr.map{String($0)}.joined(separator: " "))
                        return
                    }
                }
            }
        }
    }
    print(-1)
}

solution()
