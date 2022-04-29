/*
  개발자를 희망하는 죠르디가 카카오에 면접을 보러 왔습니다.
  코로나 바이러스 감염 예방을 위해 응시자들은 거리를 둬서 대기를 해야하는데 개발 직군 면접인 만큼
  아래와 같은 규칙으로 대기실에 거리를 두고 앉도록 안내하고 있습니다.

    1. 대기실은 5개이며, 각 대기실은 5x5 크기입니다.
    2. 거리두기를 위하여 응시자들 끼리는 맨해튼 거리1가 2 이하로 앉지 말아 주세요.
    3. 단 응시자가 앉아있는 자리 사이가 파티션으로 막혀 있을 경우에는 허용합니다.

  5개의 대기실을 본 죠르디는 각 대기실에서 응시자들이 거리두기를 잘 기키고 있는지 알고 싶어졌습니다. 
  자리에 앉아있는 응시자들의 정보와 대기실 구조를 대기실별로 담은 2차원 문자열 배열 places가 매개변수로 주어집니다. 
  각 대기실별로 거리두기를 지키고 있으면 1을, 한 명이라도 지키지 않고 있으면 0을 배열에 담아 return 하도록 solution 함수를 완성해 주세요.
*/

import Foundation

func solution(_ places: [[String]]) -> [Int]{
    var re = [Int]()

    for place in places{
        var p = [[Int]]()
        var isSafe = true

        for (i, row) in place.enumerated(){
            for(j, s) in row.enumerated(){
                if s == "P"{
                    p.append([i,j])
                }
            }
        }


        for i in 0..<p.count{
            if !isSafe {break}

            for j in (i+1)..<p.count{
                let distance = abs(p[i][0] - p[j][0]) + abs(p[i][1] - p[j][1])

                if distance == 1{
                    isSafe = false
                    break
                }
                else{
                    if distance == 2{
                        //행이 같은 경우
                        if p[i][0] == p[j][0]{
                            if Array(place[p[i][0]])[min(p[i][1], p[j][1])+1] == "O"{
                                isSafe = false
                                break
                            }
                        }
                        //열이 같은 경우
                        else if p[i][1] == p[j][1]{
                            if Array(place[min(p[i][0], p[j][0])+1])[p[i][1]] == "O"{
                                isSafe = false
                                break
                            }
                        }
                        //행과 열이 1씩 차이 나는 경우
                        else{
                            if Array(place[p[i][0]])[p[j][1]] == "O" || Array(place[p[j][0]])[p[i][1]] == "O"{
                                isSafe = false
                                break
                            }
                        }
                    }
                }
            }

        }
        re.append(isSafe ? 1 : 0)
    }

    return re
}
