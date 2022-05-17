/*
  Ax + By + C = 0으로 표현할 수 있는 n개의 직선이 주어질 때, 이 직선의 교점 중 정수 좌표에 별을 그리려 합니다.
  별이 그려진 부분은 *, 빈 공간(격자선이 교차하는 지점)은 .으로 표현하고, 격자판은 무한히 넓으니 모든 별을 포함하는 최소한의 크기만 나타내면 됩니다.
  직선 A, B, C에 대한 정보가 담긴 배열 line이 매개변수로 주어집니다. 이때 모든 별을 포함하는 최소 사각형을 return 하도록 solution 함수를 완성해주세요.

  Ax + By + E = 0
  Cx + Dy + F = 0
  두 직선의 교점이 유일하게 존재할 경우, 그 교점은 다음과 같습니다.
  
  x = (BF - ED) / (AD - BC)
  y = (EC - AF) / (AD - BC)

  또, AD - BC = 0인 경우 두 직선은 평행 또는 일치합니다.
*/

import Foundation

func solution(_ line:[[Int]]) -> [String] {
    var maxX = Int.min
    var minX = Int.max
    var maxY = Int.min
    var minY = Int.max
    var location: [(x: Int, y: Int)] = []

    for i in 0..<line.count-1{
        for j in i+1..<line.count{
            let abe = line[i]
            let cdf = line[j]
          
            //ad - bc
            let adbc = abe[0] * cdf[1] - abe[1] * cdf[0]
            //bf - ed
            let bfed = abe[1] * cdf[2] - abe[2] * cdf[1]
            //ec - af
            let ecaf = abe[2] * cdf[0] - abe[0] * cdf[2]
  
            //ad - bc가 0이 아니고, 교점 x와 y가 둘다 정수로 나눠 떨어지면
            if adbc != 0 && bfed % adbc == 0 && ecaf % adbc == 0 {
                location.append((bfed / adbc, ecaf / adbc))

                maxX = max(location.last!.x, maxX)
                minX = min (location.last!.x, minX)
                maxY = max(location.last!.y, maxY)
                minY = min(location.last!.y, minY)
            }
        }
    }

    var re = Array(repeating: Array(repeating: ".", count: maxX - minX + 1), count: maxY - minY + 1)

    for location in location {
            re[location.y - minY][location.x - minX] = "*"
    }

    re = re.reversed()

    return re.map{$0.reduce("",+)}
}
