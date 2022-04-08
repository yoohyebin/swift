/*
  단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.
*/

//Solution1
func solution(_ s:String) -> String {
    if s.count%2 == 0{
        return String(Array(s)[s.count/2-1...s.count/2])
    }
    else{
        return String(Array(s)[s.count/2])
    }
    return ""
}

//Solution2
func solution(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}
