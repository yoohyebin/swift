var string = readLine()!
var temp = ""
var re = ""
var flag = false

for s in string{
    if s == "<"{
        flag = true
        if !temp.isEmpty{
            re += temp.reversed()
            temp = ""
        }
        re.append(s)
    }
    else if s == ">"{
        re.append(s)
        flag = false
    }else{
        if flag{
            re.append(s)
        }else if s == " "{
            re += temp.reversed()
            re += " "
            temp = ""
        }else{
            temp.append(s)
        }
    }
}
if !temp.isEmpty{
    re += temp.reversed()
}
print(re)
