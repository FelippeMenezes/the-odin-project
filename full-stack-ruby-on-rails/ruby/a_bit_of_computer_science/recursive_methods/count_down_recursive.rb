def count_down_recursive(number)
  return if number < 0
  puts (number)
  count_down_recursive(number - 1)
end

count_down_recursive(-2)
count_down_recursive(0)
count_down_recursive(2)



