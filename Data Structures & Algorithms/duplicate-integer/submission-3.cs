public class Solution 
{
    public bool hasDuplicate(int[] nums)
    {
        HashSet<int> seen = new HashSet<int>();

        for (int i = 0; i < nums.Length; i++)
        {
            if (seen.Contains<int>(nums[i]))
            {
                Console.WriteLine("duplicate found");
                return true;
            }

            else
            {
                seen.Add(nums[i]);

                Console.WriteLine("duplicate not found");

            }
        }
        return false;
    }
}