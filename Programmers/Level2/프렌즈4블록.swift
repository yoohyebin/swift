func square(_ i: Int, _ j: Int, _ ch: Character, _ m: Int, _ n: Int, _ board: [[Character]]) -> Bool {
    let squareIndex = [(i,j), (i,j+1), (i+1,j), (i+1,j+1)]
    
    for (r, c) in squareIndex {
        guard (0..<m) ~= r && (0..<n) ~= c && board[r][c] == ch else { return false }
    }
    
    return true
}

func removeBlank(_ m: Int, _ n: Int, _ temp: [[Character]]) -> [[Character]] {
    var temp = temp
    
    for i in 1..<m {
        for j in 0..<n where temp[i][j] == "x" {
            for k in stride(from: i, to: 0, by: -1) {
                temp[k][j] = temp[k-1][j]
                temp[k-1][j] = "x"
            }
        }
    }
    
    return temp
}

func solution(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var board = board.map{Array($0)}
    var cnt = 0
    var isChanged = true
    
    while isChanged{
        var temp = board
        isChanged = false
        
        for i in 0..<m{
            for j in 0..<n where board[i][j] != "x"{
                if square(i, j, board[i][j], m, n, board){
                    for (r, c) in [(i,j), (i+1,j), (i,j+1), (i+1,j+1)] {
                        if temp[r][c] != "x" {
                            cnt += 1
                            temp[r][c] = "x"
                        }
                    }
                    isChanged = true
                }
            }
        }
        board = removeBlank(m, n, temp)
    }
    
    return cnt
}
