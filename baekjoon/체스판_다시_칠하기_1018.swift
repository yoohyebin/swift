let input_data = readLine()!.split(separator: " ").map{Int(String($0))!}
var n = input_data[0], m = input_data[1]
var input = [[Character]]()

for _ in 0..<n{
    input.append(readLine()!.map{Character(extendedGraphemeClusterLiteral: $0)})
}

func countPain(_ board: [[Character]]) -> Int{
    var white = 0
    var black = 0
    
    for x in 0..<8{
        for y in 0..<8{
            if (x+y)%2 == 0{
                if board[x][y] == "B"{
                    white += 1
                }else{
                    black += 1
                }
            }else{
                if board[x][y] == "W"{
                    white += 1
                }else{
                    black += 1
                }
            }
        }
    }
    return min(white, black)
}

func getBoard(_ x: Int, _ y: Int)-> [[Character]]{
    var board = [[Character]]()
    
    for i in 0..<8{
        board.append(Array(input[x+i][y..<y+8]))
    }
    return board
}

var re = 64

for x in 0..<(n-7){
    for y in 0..<(m-7){
        let board = getBoard(x, y)
        re = min(re, countPain(board))
    }
}
print(re)
