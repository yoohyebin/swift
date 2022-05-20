import Foundation

func solution(_ s:String) -> [Int] {
    var zero_cnt: Int = 0, cnt: Int = 0
    var s_value = s

    while s_value != "1"{
        var z = s_value.filter{$0 == "0"}.count
        s_value = String( s_value.count - z, radix: 2 )
        cnt += 1
        zero_cnt += z
    }
    return [cnt, zero_cnt]
}
