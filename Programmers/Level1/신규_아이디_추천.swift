import Foundation

func solution(_ new_id:String) -> String {
    var s1 = new_id.lowercased()
    
    var s2: String = ""
    for c in s1{
        if ((c >= "a" && c <= "z") || (c >= "0" && c <= "9") || c == "-" || c == "_" || c == "."){
            s2.append(c)
        }
    }
    
    var s3 = s2.replacingOccurrences(of: "..", with: ".")
    while (s3.contains("..")){
        s3 = s3.replacingOccurrences(of: "..", with: ".")
    }
   
    var s4 = s3
    if s4.first == "."{
        s4.removeFirst()
    }
    if s4.last == "."{
        s4.removeLast()
    }
    
    if s4.count == 0{
        s4 += "a"
    }
    
    if s4.count >= 16{
        s4.removeLast(s4.count-15)
        
        if s4.last == "."{
            s4.removeLast()
        }
    }
    
    var s5 = s4
    if s4.count <= 2{
        while(s5.count < 3){
            s5.append(s4.last!)
        }
    }

    return s5
}
