/*
  여러 언론사에서 쏟아지는 뉴스, 특히 속보성 뉴스를 보면 비슷비슷한 제목의 기사가 많아 정작 필요한 기사를 찾기가 어렵다. 
  Daum 뉴스의 개발 업무를 맡게 된 신입사원 튜브는 사용자들이 편리하게 다양한 뉴스를 찾아볼 수 있도록 문제점을 개선하는 업무를 맡게 되었다.

  유사한 기사를 묶는 기준을 정하기 위해서 논문과 자료를 조사하던 튜브는 "자카드 유사도"라는 방법을 찾아냈다.
  자카드 유사도는 집합 간의 유사도를 검사하는 여러 방법 중의 하나로 알려져 있다. 
  두 집합 A, B 사이의 자카드 유사도 J(A, B)는 두 집합의 교집합 크기를 두 집합의 합집합 크기로 나눈 값으로 정의된다.

  예를 들어 집합 A = {1, 2, 3}, 집합 B = {2, 3, 4}라고 할 때, 교집합 A ∩ B = {2, 3}, 합집합 A ∪ B = {1, 2, 3, 4}이 되므로, 
  집합 A, B 사이의 자카드 유사도 J(A, B) = 2/4 = 0.5가 된다. 집합 A와 집합 B가 모두 공집합일 경우에는 나눗셈이 정의되지 않으니 따로 J(A, B) = 1로 정의한다.

  자카드 유사도는 원소의 중복을 허용하는 다중집합에 대해서 확장할 수 있다. 
  다중집합 A는 원소 "1"을 3개 가지고 있고, 다중집합 B는 원소 "1"을 5개 가지고 있다고 하자. 
  이 다중집합의 교집합 A ∩ B는 원소 "1"을 min(3, 5)인 3개, 합집합 A ∪ B는 원소 "1"을 max(3, 5)인 5개 가지게 된다. 
  다중집합 A = {1, 1, 2, 2, 3}, 다중집합 B = {1, 2, 2, 4, 5}라고 하면, 
  교집합 A ∩ B = {1, 2, 2}, 합집합 A ∪ B = {1, 1, 2, 2, 3, 4, 5}가 되므로, 자카드 유사도 J(A, B) = 3/7, 약 0.42가 된다.
*/

func solution(_ str1:String, _ str2:String) -> Int {
    var str1_arr = [String](), str2_arr = [String]()
    var str_union = [String](), str_intersection = [String]()
    
    for i in 0..<str1.count-1{
        if Array(str1)[i].isLetter && Array(str1)[i+1].isLetter {
            str1_arr.append( String(Array(str1)[i...i+1]).lowercased())
        }
    }
    
    for i in 0..<str2.count-1{
        if Array(str2)[i].isLetter && Array(str2)[i+1].isLetter {
            str2_arr.append( String(Array(str2)[i...i+1]).lowercased())
        }
    }

    if str1_arr.isEmpty && str2_arr.isEmpty{
        return 65536
    }
    
    var unionCnt = str1_arr.count + str2_arr.count
    var intersectionCnt = 0
    
    for i in str1_arr.indices{
        for j in str2_arr.indices{
            if str1_arr[i] == str2_arr[j]{
                intersectionCnt += 1
                str2_arr.remove(at: j)
                break
            }
        }
    }
    
    //합집합 = a+b - 교집합
    unionCnt -= intersectionCnt
    
    return intersectionCnt == 0 ? 0 : Int(Double(intersectionCnt) / Double(unionCnt) * 65536)
}

print(solution("FRANCE","french"))
