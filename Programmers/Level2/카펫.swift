import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    for i in 1...yellow{
        if yellow % i == 0{
            let x = i
            let y = yellow/i
            
            if (x+y) * 2 + 4 == brown{
                return x > y ? [x+2, y+2] : [y+2, x+2]
            }
        }
    }
    return [0,0]
}
