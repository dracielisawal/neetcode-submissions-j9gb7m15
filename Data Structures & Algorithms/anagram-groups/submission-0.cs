public class Solution {
     public List<List<string>> GroupAnagrams(string[] strs)
    {
        List<List<string>> finalList = new();
        Dictionary<string,List<string>> stringIndex = new();
        for(int i =0; i <strs.Length; i++)
        {
           char[] charArray = strs[i].ToArray();
           Array.Sort(charArray); 
           string sortedS = new string(charArray);
            if (!stringIndex.ContainsKey(sortedS))
            {
                stringIndex[sortedS] = new List<string>();
            }
            stringIndex[sortedS].Add(strs[i]);
        }
        return stringIndex.Values.ToList<List<string>>();
    }
}
