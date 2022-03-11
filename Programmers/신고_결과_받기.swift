/*
    신입사원 무지는 게시판 불량 이용자를 신고하고 처리 결과를 메일로 발송하는 시스템을 개발하려 합니다. 
    무지가 개발하려는 시스템은 다음과 같습니다.
    
    - 각 유저는 한 번에 한 명의 유저를 신고할 수 있습니다.
    - 신고 횟수에 제한은 없습니다. 서로 다른 유저를 계속해서 신고할 수 있습니다.
    - 한 유저를 여러 번 신고할 수도 있지만, 동일한 유저에 대한 신고 횟수는 1회로 처리됩니다.
    - k번 이상 신고된 유저는 게시판 이용이 정지되며, 해당 유저를 신고한 모든 유저에게 정지 사실을 메일로 발송합니다.
    - 유저가 신고한 모든 내용을 취합하여 마지막에 한꺼번에 게시판 이용 정지를 시키면서 정지 메일을 발송합니다.

    다은 조건을 만족하는 시스템을 만들 때, 유저별로 처리 결과 메일을 받은 횟수를 구하시오.
*/

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var dic = [String: [String]]()
    var result = [Int](repeating: 0, count: id_list.count)
    
    for i in Set(report){
        let a = i.split(separator: " ").map{String($0)}
        dic[a[1]] = (dic[a[1]] ?? []) + [a[0]]
    }
    
   for i in dic{
        if i.value.count >= k{
            i.value.forEach{
                result[id_list.firstIndex(of: $0)!] += 1
            }
        }
    }
    return result
}
