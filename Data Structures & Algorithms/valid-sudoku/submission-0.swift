class Solution {
   
    func isValidSudoku(_ board: [[Character]]) -> Bool {
     var isValid = true
var rows = Array(repeating: Set<Character>(), count : 9)
var cols = Array(repeating: Set<Character>(), count : 9)
var boxes = Array(repeating: Set<Character>(), count : 9)
     for r in 0..<9 {
        for c in 0..<9 {
   let char =  board[r][c]
   if char == "." { continue } 
   var boxIndex = r/3*3 + c/3 
if rows[r].contains(char) || cols[c].contains(char) || boxes[boxIndex].contains(char){
return false
}
else{
rows[r].insert(char) 
cols[c].insert(char)
boxes[boxIndex].insert(char)
}
}
}
     return isValid
    }
}
