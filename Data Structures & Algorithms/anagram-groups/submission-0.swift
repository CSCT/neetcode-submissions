class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        //Anagrams contain the same letters
        var ans = [String:[String]]()
        for word in strs{
            var sortedWord = String(word.sorted())
            ans[sortedWord,default:[]].append(word)
        }
        return Array(ans.values)
    }
}
