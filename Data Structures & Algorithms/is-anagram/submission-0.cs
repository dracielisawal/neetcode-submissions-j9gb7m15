public class Solution
{
    public bool IsAnagram(string s, string t)
    {
        if (s.Length != t.Length)
            return false;

        Dictionary<char, int> dict1 = new();
        Dictionary<char, int> dict2 = new();

        for (int i = 0; i < s.Length; i++)
        {
            if (dict1.ContainsKey(s[i]))
                dict1[s[i]]++;
            else
                dict1[s[i]] = 1;

            if (dict2.ContainsKey(t[i]))
                dict2[t[i]]++;
            else
                dict2[t[i]] = 1;
        }

        // Compare contents
        foreach (var kv in dict1)
        {
            if (!dict2.ContainsKey(kv.Key) || dict2[kv.Key] != kv.Value)
                return false;
        }

        return true;
    }
}
