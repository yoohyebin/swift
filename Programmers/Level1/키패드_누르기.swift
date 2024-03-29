/*
  스마트폰 키패드에서 왼손과 오른손의 엄지손가락만을 이용해서 숫자만을 입력하려고 합니다.
  맨 처음 왼손 엄지손가락은 * 키패드에 오른손 엄지손가락은 # 키패드 위치에서 시작하며, 엄지손가락을 사용하는 규칙은 다음과 같습니다.

    1. 엄지손가락은 상하좌우 4가지 방향으로만 이동할 수 있으며 키패드 이동 한 칸은 거리로 1에 해당합니다.
    2. 왼쪽 열의 3개의 숫자 1, 4, 7을 입력할 때는 왼손 엄지손가락을 사용합니다.
    3. 오른쪽 열의 3개의 숫자 3, 6, 9를 입력할 때는 오른손 엄지손가락을 사용합니다.
    4. 가운데 열의 4개의 숫자 2, 5, 8, 0을 입력할 때는 두 엄지손가락의 현재 키패드의 위치에서 더 가까운 엄지손가락을 사용합니다.
      4-1. 만약 두 엄지손가락의 거리가 같다면, 오른손잡이는 오른손 엄지손가락, 왼손잡이는 왼손 엄지손가락을 사용합니다.
  
  각 번호를 누른 엄지손가락이 왼손인 지 오른손인 지를 나타내는 연속된 문자열 형태로 출력하는 프로그램을 작성하시오.
*/

import Foundation

//Solution 1
func solution(_ numbers:[Int], _ hand:String) -> String {
    var l = 10
    var r = 12
    var re = ""

    for i in numbers{
        if i == 1 || i == 4 || i == 7{
            re += "L"
            l = i
        }
        else if i == 3 || i == 6 || i == 9{
            re += "R"
            r = i
        }
        else{
            var a = i
            if i == 0{
                a = 11
            }
            if  (abs(a - l) % 3) + (abs(a - l) / 3) > (abs(a - r) % 3) + (abs(a - r) / 3) {
                re += "R"
                r = a
            }
            else if (abs(a - r) % 3) + (abs(a - r) / 3) > (abs(a - l) % 3) + (abs(a - l) / 3) {
                re += "L"
                l = a
            }
            else{
                if hand == "right"{
                    re += "R"
                    r = a
                }
                else{
                    re += "L"
                    l = a
                }
            }
        }
    }
    return re
}

//Solution 2
func solution(_ numbers:[Int], _ hand:String) -> String {
    let keypad = [[3,1],[0,0],[0,1],[0,2],[1,0],[1,1],[1,2],[2,0],[2,1],[2,2]]
    var result = ""
    var current = [[3,0], [3,2]]
    
    for n in numbers{
        if n == 1 || n == 4 || n == 7 {
            result += "L"
            current[0] = keypad[n]
        }else if  n == 3 || n == 6 || n == 9 {
            result += "R"
            current[1] = keypad[n]
        }else{
            let left = abs(current[0][0]-keypad[n][0]) + abs(current[0][1]-keypad[n][1])
            let right = abs(current[1][0]-keypad[n][0]) + abs(current[1][1]-keypad[n][1])
            
            if left == right{
                let h = hand == "right" ? 1 : 0
                result += h == 1 ? "R" : "L"
                current[h] = keypad[n]
            }
            else if left > right{
                result += "R"
                current[1] = keypad[n]
            }else{
                result += "L"
                current[0] = keypad[n]
            }
        }
    }
    
    return result
}
