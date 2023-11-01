#iterative method 
# def range(min, max)
#     result = []
#     (min...max).each do |num| 
#         result << num   
#     end
#     if max <= min 
#         return []
#     end
#     return result 
# end

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

# def range(min,max)# (1,2)
#     return [] if max <= min 
#     return [1] if max == 2


#     [1]
#    range(min,max-1) << memo(min,max - 1) #(1,1)
# end
