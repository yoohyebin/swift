//Solution 1
func solution(_ s:String) -> Bool
{
    return s.filter{$0 == "p" || $0 == "P"}.count == s.filter{$0 == "y" || $0 == "Y"}.count ? true: false
}

//Solution 2
func solution(_ s:String) -> Bool
{
    var new_s = s.lowercased()
    return new_s.filter{$0 == "p"}.count == new_s.filter{$0 == "y"}.count ? true : false
}
