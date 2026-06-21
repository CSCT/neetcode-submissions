class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()

        for char in s {
            //Check for Opening Brackets
            if char == "{" || char == "[" || char == "(" {
                stack.append(char)
            }
            else {
                // Check Emptyness
                if stack.isEmpty{
                    return false
                }
                // Use removes because it is not optional unlike poplast
                let popped = stack.removeLast()

                if !check(char: char, popped: popped) {
                    return false
                }

            }
        }
        // Have to double check that the stack has no leftovers
        return stack.isEmpty
    }

    func check (char: Character, popped: Character)->Bool{
        return (popped == "[" && char == "]") ||
               (popped == "(" && char == ")") ||
               (popped == "{" && char == "}")
    }

}
