/*
  데이터 처리 전문가가 되고 싶은 "어피치"는 문자열을 압축하는 방법에 대해 공부를 하고 있습니다. 
  최근에 대량의 데이터 처리를 위한 간단한 비손실 압축 방법에 대해 공부를 하고 있는데, 
  문자열에서 같은 값이 연속해서 나타나는 것을 그 문자의 개수와 반복되는 값으로 표현하여 더 짧은 문자열로 줄여서 표현하는 알고리즘을 공부하고 있습니다.
  간단한 예로 "aabbaccc"의 경우 "2a2ba3c"(문자가 반복되지 않아 한번만 나타난 경우 1은 생략함)와 같이 표현할 수 있는데, 
  이러한 방식은 반복되는 문자가 적은 경우 압축률이 낮다는 단점이 있습니다. 예를 들면, "abcabcdede"와 같은 문자열은 전혀 압축되지 않습니다. 
  "어피치"는 이러한 단점을 해결하기 위해 문자열을 1개 이상의 단위로 잘라서 압축하여 더 짧은 문자열로 표현할 수 있는지 방법을 찾아보려고 합니다.

  압축할 문자열 s가 매개변수로 주어질 때, 위에 설명한 방법으로 1개 이상 단위로 문자열을 잘라 압축하여 표현한 문자열 중 가장 짧은 것의 길이를 return 하도록 solution 함수를 완성해주세요.
*/

import Foundation

//문자열을 len 크기로 나누는 함수
func slicing(_ s: String, _ len: Int) -> [String]{
    var a = ""
    var re = [String]()

    for i in s{
        a += String(i)
        if a.count == len{
            re.append(a)
            a = ""
        }
    }
    if !a.isEmpty { re.append(a)}
    return  re
}

//len 크기로 나눠진 문자 배열을 압축하는 함수
func compress(_ s: [String]) -> String{
    var re = ""
    var cnt = 1
    var a = s[0]

    for i in 0..<s.count-1{
        if a == s[i+1]{
            cnt += 1
        }
        else{
            re += (cnt > 1) ? "\(cnt)\(a)" : "\(a)"
            cnt = 1
            a = s[i+1]
        }
    }
    if a != "" {re += (cnt > 1) ? "\(cnt)\(a)" : "\(a)"}
    return re
}

func solution(_ s:String) -> Int {
    if s.count < 3 {return s.count}

    var re = s.count

    for len in 1...s.count/2{
        let slice_sting = slicing(s, len)
        let compress_string = compress(slice_sting)
        if compress_string.count < re {re = compress_string.count}
    }

    return re
}
