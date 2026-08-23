using System;

public class Program
{
    public static int[] nums = new int[] { 1, 2, 3, 4, 5,1 };

    public static void Main()
    {
        bool dup = HasDuplicate(nums);
        Console.WriteLine(dup);
    }

    public static bool HasDuplicate(int[] nums)
    {
        for (int index = 0; index < nums.Length; index++)
        {
            int currnum = nums[index];

            for (int i = index + 1; i < nums.Length; i++)
            {
                if (nums[i] == currnum)
                {
                    Console.WriteLine("duplicate found");
                    return true;
                }
            }
        }

        Console.WriteLine("duplicate not found");
        return false;
    }
}
