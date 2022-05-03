/*
  일반적인 프린터는 인쇄 요청이 들어온 순서대로 인쇄합니다. 그렇기 때문에 중요한 문서가 나중에 인쇄될 수 있습니다. 이런 문제를 보완하기 위해 중요도가 높은 문서를 먼저 인쇄하는 프린터를 개발했습니다. 이 새롭게 개발한 프린터는 아래와 같은 방식으로 인쇄 작업을 수행합니다.

    1. 인쇄 대기목록의 가장 앞에 있는 문서(J)를 대기목록에서 꺼냅니다.
    2. 나머지 인쇄 대기목록에서 J보다 중요도가 높은 문서가 한 개라도 존재하면 J를 대기목록의 가장 마지막에 넣습니다.
    3. 그렇지 않으면 J를 인쇄합니다.

  현재 대기목록에 있는 문서의 중요도가 순서대로 담긴 배열 priorities와 내가 인쇄를 요청한 문서가 현재 대기목록의 어떤 위치에 있는지를 알려주는 location이 매개변수로 주어질 때, 
  내가 인쇄를 요청한 문서가 몇 번째로 인쇄되는지 return 하도록 solution 함수를 작성해주세요.
*/

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var priority = priorities
    var p = [Int]()
    var nowIndex = location, re = 0, temp = 0

    while !priority.isEmpty{
        //더 높은 우선순위가 존재하는 경우
        if priority.max()! > priority[0]{
            temp = priority.removeFirst()
            priority.append(temp)

            if nowIndex == 0{
                nowIndex = priority.count - 1
            }else{
                nowIndex -= 1
            }
        }
        //우선순위가 가장 높은 경우  
        else{                 
            priority.removeFirst()
            re += 1

            if nowIndex == 0{
                break
            }else{
                nowIndex -= 1
            }
        }
    }

    return re
}
