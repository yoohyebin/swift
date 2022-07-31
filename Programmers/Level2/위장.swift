func solution(_ clothes:[[String]]) -> Int {
    var clothes_dic = [String: [String]]()
    var re = 1
    
    for c in clothes{
        clothes_dic[c[1], default: []].append(c[0])
    }
    
    for i in clothes_dic{
        re *= (i.value.count + 1)
    }
    return re-1
}
