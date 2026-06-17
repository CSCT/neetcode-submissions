class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
 var seen = [Int:Int]()
    var neededNum = 0 
    for (i,num) in nums.enumerated(){
         neededNum = target - num
         if let index = seen[neededNum]{
            return [index,i]
         }
        seen[num] = i
    }   
    return[]
    }
}
