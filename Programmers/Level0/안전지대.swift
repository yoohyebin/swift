import Foundation

func solution(_ board:[[Int]]) -> Int {
    var board = board
    let n = board.count
    var answer = 0
    
    for x in 0..<n{
        for y in 0..<n{
            if board[x][y] == 1{
                if x-1 >= 0{
                    if y-1 >= 0 && board[x-1][y-1] == 0 { board[x-1][y-1] = -1}
                    if y+1 < n && board[x-1][y+1] == 0 {board[x-1][y+1] = -1}
                    if board[x-1][y] == 0 {board[x-1][y] = -1}
                }
                if x+1 < n{
                    if y-1 >= 0 && board[x+1][y-1] == 0 { board[x+1][y-1] = -1}
                    if y+1 < n && board[x+1][y+1] == 0 {board[x+1][y+1] = -1}
                    if board[x+1][y] == 0 {board[x+1][y] = -1}
                }
                
                if y-1 >= 0 && board[x][y-1] == 0 { board[x][y-1] = -1}
                if y+1 < n && board[x][y+1] == 0 {board[x][y+1] = -1}
            }
        }
    }
    
    for i in 0..<n{
        answer += board[i].filter{$0 == 0}.count
    }
    
    return answer
}
