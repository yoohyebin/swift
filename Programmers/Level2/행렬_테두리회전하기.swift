import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var matrix = [[Int]]()
    var result = [Int]()
    
    for row in 0..<rows {
        matrix.append(Array((row*columns + 1)...(row*columns + columns)))
    }
    
    for query in queries {
        let y1 = query[0]-1
        let x1 = query[1]-1
        let y2 = query[2]-1
        let x2 = query[3]-1
        let pivot = matrix[y1][x1]
        var minValue = pivot
        
        for y in y1..<y2{
            minValue = min(minValue, matrix[y+1][x1])
            matrix[y][x1] = matrix[y+1][x1]
        }
        
        for x in x1..<x2{
            minValue = min(minValue, matrix[y2][x+1])
            matrix[y2][x] = matrix[y2][x+1]
        }
        
        for y in stride(from: y2, to: y1, by: -1){
            minValue = min(minValue, matrix[y-1][x2])
            matrix[y][x2] = matrix[y-1][x2]
        }
        
        for x in stride(from: x2, to: x1, by: -1){
            minValue = min(minValue, matrix[y1][x-1])
            matrix[y1][x] = matrix[y1][x-1]
        }
        
        matrix[y1][x1+1] = pivot
        result.append(minValue)
    }

    return result
}
