var string_value:[String] = readLine()!.map{String($0)}
var stack:[String] = []
var result:Int = 0
var correct:Bool = true
var temp:Int = 1

for i in 0..<string_value.count{
    switch  string_value[i]{
    case "(" :
        temp *= 2
        stack.append(string_value[i])
    case "[" :
        temp *= 3
        stack.append(string_value[i])
    case ")" :
        if stack.isEmpty || stack.last != "("{
            correct = false
            break
        }
        if string_value[i-1]=="("{
            result += temp
        }
        stack.removeLast()
        temp /= 2
    case "]" :
        if stack.isEmpty || stack.last != "["{
            correct = false
            break
        }
        if string_value[i-1]=="["{
            result += temp
        }
        stack.removeLast()
        temp /= 3
    default:
        correct = false
    }

}
if !correct || !stack.isEmpty{
    print(0)
}else{
    print(result)
}
