public class Solution {
     public int[] TwoSum(int[] nums, int target) {
         int[] final = new int[2];
        Dictionary<int,int> ints = new Dictionary<int, int>(); //number and diff with target
        for(int i = 0 ; i<nums.Count() ; i++)
        {
            int diff = target - nums[i];
            if (ints.ContainsKey(diff))
            {
               Console.WriteLine("ints does not contain key" + diff);
                final[0] = ints[diff];
                final[1] = i;
                return final;
               
            }
            else
            {
             Console.WriteLine("current" + nums[i] + " target " + target);
                ints.Add(nums[i], i);
            }
                
        }
        return null;
        }
    }

