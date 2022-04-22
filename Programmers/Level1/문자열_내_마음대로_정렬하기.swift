/*
  문자열로 구성된 리스트 strings와, 정수 n이 주어졌을 때, 각 문자열의 인덱스 n번째 글자를 기준으로 오름차순 정렬하려 합니다. 
  예를 들어 strings가 ["sun", "bed", "car"]이고 n이 1이면 각 단어의 인덱스 1의 문자 "u", "e", "a"로 strings를 정렬합니다.
*/

//Solution 1
func solution(_ strings:[String], _ n:Int) -> [String] {
    var index = strings[0].index(strings[0].startIndex, offsetBy: n)    //n번째 글짜 인덱스 구하기

    return strings.sorted(by: {(s1: String, s2: String) -> Bool in
        s1[index] == s2[index] ? s1 < s2 : s1[index] < s2[index]        //s1과 s2의 n번째 글자가 같다면 s1과 s2를 비교하여 오름차순 정렬, 다르다면 각 n번째 글자를 비교하여 오름차순 정렬
    })
}

//Solution 2
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{
        Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n]
    }
}
