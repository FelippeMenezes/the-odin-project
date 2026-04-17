# # def my_name
# #   return "Felippe Santana"
# # end

# # puts my_name

# # def show_my_name
# #   return "Felippe Santana"
# #   "Rachell Santana"
# # end

# # puts show_my_name

# # def even_odd(number)
# #   unless number.is_a? Numeric
# #     return "A number was not entered."
# #   end

# #   if number % 2 == 0
# #     "That is an even number."
# #   else
# #     "That is an odd number."
# #   end
# # end

# # puts even_odd(20)
# # puts even_odd("Ruby")

# # def puts_squared(number)
# #   puts number * number
# # end

# # x = puts_squared(20)

# # puts x

# # def return_squared(number)
# #   number * number
# # end

# # return_squared(10)

# # x = return_squared(20)

# # y = 100
# # sum = x + y

# # puts "The sum of #{x} and #{y} is #{sum}."

# a = [1, 2, 3]

# def mutate(array)
#   array.pop
# end

# p "Before mutate method: #{a}"
# mutate(a)
# p "After mutate method: #{a}"

# def no_mutate(array)
#   array.last
# end

# p "Before no_mutate method: #{a}"
# no_mutate(a)
# p "After no_mutate method: #{a}"

def add_three(number)
  number + 3
end

returned_value_1 = add_three(4)
puts returned_value_1

def add_four(number)
  return number + 4
end

returned_value_2 = add_four(4)
puts returned_value_2

def add_five(number)
  return number + 5
  number + 10
end

returned_value_3 = add_five(4)
puts returned_value_3
