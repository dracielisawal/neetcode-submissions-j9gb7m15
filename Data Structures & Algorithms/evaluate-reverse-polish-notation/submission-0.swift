class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
     
    let operators = ["+","-","*","/"]
     var stack : [Int] = []
    for token in tokens {
        
        if operators.contains(token){ 

   
    let last =  stack.removeLast()
    let secondLast = stack.removeLast()
    var valToAppend = 0 
    switch token {
    case "+" :
    valToAppend = secondLast + last
    
    case "-" :
    valToAppend = secondLast - last
    
    case "*" :
    valToAppend = secondLast * last
    
    case "/" :
    valToAppend = secondLast / last
    
    default:
    break
    }
    stack.append(valToAppend)
    }
    else {
    stack.append(Int(token)!)
    }
        
    
    
     
    }
    return stack.last!
}
}