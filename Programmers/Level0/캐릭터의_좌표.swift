import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let dx = [0,0,-1,1]
    let dy = [1,-1,0,0]
    var x = 0, y = 0, nx = 0, ny = 0
    
    for key in keyinput{
        nx = x
        ny = y
        switch key{
            case "up":
                nx += dx[0]
                ny += dy[0]
            case "down":
                nx += dx[1]
                ny += dy[1]
            case "left":
                nx += dx[2]
                ny += dy[2]
            case "right":
                nx += dx[3]
                ny += dy[3]
            default:
                break
        }
        if nx >= -(board[0]/2) && nx <= board[0]/2 && ny >= -(board[1]/2) && ny <= board[1]/2{
            x = nx
            y = ny
        }
    }
    
    return [x, y]
}
