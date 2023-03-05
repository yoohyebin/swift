import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var x_arr = [Int]()
    var y_arr = [Int]()

    for (i, paper) in wallpaper.enumerated() {
        if paper.contains("#"){
            for (index, w) in paper.map{String($0)}.enumerated(){
                if w == "#" {
                    x_arr.append(i)
                    y_arr.append(index)
                }
            }
        }
    }

    return [x_arr.min() ?? 0, y_arr.min() ?? 0, x_arr.max()!+1, y_arr.max()!+1]
}
