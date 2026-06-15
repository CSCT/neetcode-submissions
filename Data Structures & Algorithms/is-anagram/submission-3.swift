class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        // Anagram means all letters are the same. We can easily make a O(n+24) and tracker letters
        if s.count != t.count{
            return false 
        }
        var map1  = [Character:Int]()
        var map2  = [Character:Int]()

        for char in s {
            map1[char,default: 0] += 1
        }
        for char in t {
            map2[char,default: 0] += 1
        }

        for char in s {
            if map2[char] != map1[char]{
                return false
            }
        }
    return true

    }


}
