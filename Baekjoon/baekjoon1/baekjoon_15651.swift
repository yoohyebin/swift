import Foundation

let input = readLine()!.split(separator: " ").map{Int($0)!}

let N = input[0]
let M = input[1]

var result = ""
func dfs(_ cnt: Int,_ sequence: String){
    
    if cnt == M {
        result += "\(sequence)\n"
        return
    }
    
    for i in 1...N {
        dfs(cnt+1,sequence + "\(i) ")
    }
}

dfs(0,"")
print(result)
