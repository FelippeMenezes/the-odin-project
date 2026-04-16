def my_name
  return "Felippe Santana"
end

puts my_name

def show_my_name
  return "Felippe Santana"
  "Rachell Santana"
end

puts show_my_name

def even_odd(number)
  unless number.is_a? Numeric
    return "A number was not entered."
  end

  if number % 2 == 0
    "That is an even number."
  else
    "That is an odd number."
  end
end

puts even_odd(20)
puts even_odd("Ruby")

def puts_squared(number)
  puts number * number
end

x = puts_squared(20)

puts x

def return_squared(number)
  number * number
end

return_squared(10)

x = return_squared(20)

y = 100
sum = x + y

puts "The sum of #{x} and #{y} is #{sum}."
