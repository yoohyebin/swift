var n = Int(readLine()!)!

if n == 0 {
    print(0)
}else{
    var re = ""
    
    while n != 0{
        if n % -2 == 0{
            re += "0"
            n /= -2
        }else{
            re += "1"
            n = (n-1) / -2
        }
    }
    print(String(re.reversed()))
}
