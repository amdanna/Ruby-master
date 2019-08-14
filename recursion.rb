def sum_to(n)
    return nil if n < 1
    return n if n == 1
    n + sum_to(n - 1)
end

sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8)  # => returns nil

def add_numbers(nums_array)
    return nums_array.first if nums_array.length <= 1
    nums_array.pop + add_numbers(nums_array)

end

add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil

def ice_cream_shop(flavors, favorite)
    return false if flavors.empty?
    return true if flavors.last == favorite

    ice_cream_shop(flavors[0...-1], favorite)

end

ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
ice_cream_shop([], 'honey lavender')  # => returns false

def reverse(string)
    return "" if string.empty?
    string[-1] + reverse(string[0...-1])

end

reverse("house") # => "esuoh"
reverse("dog") # => "god"
reverse("atom") # => "mota"
reverse("q") # => "q"
reverse("id") # => "di"
reverse("") # => ""