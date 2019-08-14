# Write a function anagrams(str1, str2) that takes in two words and returns a boolean
# indicating whether or not the words are anagrams. Anagrams are words that
# contain the same characters but not necessarily in the same order. Solve this
# without using Array#sort
def anagrams(str1, str2)
    str_1 = Hash.new(0)
    str_2 = Hash.new(0)
    str1.each_char { |c| str_1[c] += 1}
    str2.each_char { |c| str_2[c] += 1}
    str_1 == str_2
  
end

# Write a recursive method that takes in a base 10 number n and
# converts it to a base b number. Return the new number as a string
#
# E.g. base_converter(5, 2) == "101"
# base_converter(31, 16) == "1f"
def base_converter(num, b)
    return n.to_s if [0,1].include
end


# Write a monkey patch of binary search:
# E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
class Array
    def my_bsearch(target)
        
      
    end
  end

class Array
    # Write an Array method that returns a bubble-sorted copy of an array. 
    # Do NOT call the built-in Array#sort method in your implementation. 
    def bubble_sort(&prc)
        self.dup.bubble_sort!(&prc)

    end

    # You are not required to implement this; it's here as a suggestion :-)
    def bubble_sort!(&prc)
        prc ||= Proc.new { |a,b| a <=> b}
        sorted = false
        while !sorted
            sorted = true
            self.each_with_index do |ele, i|
                if prc.call(self[i],self[i + 1]) == 1
                    self[i], self[i + 1] = self[i + 1], self[i]
                    sorted = false
                end 
            end
        end
        self
    end
end

# Back in the good old days, you used to be able to write a darn near
# uncrackable code by simply taking each letter of a message and incrementing it
# by a fixed number, so "abc" by 2 would look like "cde", wrapping around back
# to "a" when you pass "z".  Write a function, `caesar_cipher(str, shift)` which
# will take a message and an increment amount and outputs the encoded message.
# Assume lowercase and no punctuation. Preserve spaces.
#
# To get an array of letters "a" to "z", you may use `("a".."z").to_a`. To find
# the position of a letter in the array, you may use `Array#find_index`.
def caesar_cipher(str, shift)

end

