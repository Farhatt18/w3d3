#iterative method 
def range(min, max)
    result = []
    (min...max).each do |num| 
        result << num   
    end
    if max <= min 
        return []
    end
    return result 
end

# p range(1,5)
# p range(3,2)

# base case
# return [] if max <= min
# return [1] if max== 2 

#INDUCTIVE STEP
#
# range (1,3) : 
    #range(min, max -2)

# recursive method 
def range(min,max) # (1,3)
    return [] if max <= min 
    return [1] if max == 2
    #range(1,3-1)      # range()
    #range(1,2)
    # [1] <<            # [1]
    range(min,max-1)  << max - min #(1,1)
end

# --------------------------------------------

#version 1: exponent

def expo(b, n)
    return 1 if n == 0
    return b if n == 1
    b * expo(b, n - 1)
end 
# p expo(1, 0) #-> 1
# p expo(1, 1) #-> 1
# p expo(2, 2) #-> 4
# p expo(2, 3) #-> 8

# version 2: exponent

def expo(b, n)
    return 1 if n == 0 
    return b if n == 1
    even_expo = expo(b, n / 2) ** 2  
    odd_expo = b * (expo(b, (n - 1) / 2) ** 2)
    return even_expo if n.even?
    return odd_expo if n.odd?
end 
# p expo(0, 0) #-> 0^0 -> 0
# p expo(0, 1) #-> 0^1 -> 0
# p expo(1, 0) #-> 1^2 -> 1
# p expo(1, 1) #-> 1^1 -> 1
# p expo(1, 2) #-> 1^2 -> 1
# p expo(2, 0) #-> 2^0 -> 1
# p expo(2, 1) #-> 2^1 -> 2
# p expo(2, 2) #-> 2^2 -> 4

#Deep dup

def deep_dup(nested_arr) #[1, [2], [3, [4]]]
    result_copy = []

    nested_arr.each do |ele| #ele = ele or [ele1, ele2]
        if ele.is_a?(Array)
            result_copy << deep_dup(ele) 
        else
            result_copy << ele
        end
    end

    result_copy
end
# p deep_dup([1, [2], [3, [4]]]) => [1, [2], [3, [4]]]

# # iterative method : fib

def fib(n) #3
   
    result = [0,1]
     i = result.length
    while i < n # 2 < 3
        next_num = result[-2] + result[-1]
        result << next_num
        i += 1
    end 
    result
end

#recursively
def fib(n)
    return [0,1].take(n) if n <= 2
    prev_arr = fib(n-1)
    prev_arr << prev_arr[-2] + prev_arr[-1]
end
 
#fib(3) -> [0,1,1]


