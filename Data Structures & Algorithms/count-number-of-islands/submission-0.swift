class Solution {
    func numIslands(_ grid : [[Character]]) -> Int {
       var count : Int = 0
       var grid = grid
       if grid.isEmpty {
           return count
       }
       for row in 0...grid.count-1{
           for col in 0...grid[row].count-1 {
               
               if grid[row][col] == "1" {

                 grid =  sinkIsland(grid,row,col)//dfs to find the whole island
                                    count += 1
                   
               }
           }
       }
       return count
   }
   func sinkIsland(_ grid : [[Character]], _ row : Int, _ col : Int) -> [[Character]]
   {
       var returnGird = grid
       if row < 0 || row >= returnGird.count || col < 0 || col >= returnGird[row].count || returnGird[row][col] == "0" {
           return returnGird
       }
       returnGird[row][col] = "0"
       
       returnGird = sinkIsland(returnGird,row+1,col)
       returnGird = sinkIsland(returnGird,row-1,col)
       returnGird = sinkIsland(returnGird,row,col+1)
       returnGird = sinkIsland(returnGird,row,col-1)
       return returnGird
   }
}
