def count_up_recursive(number)
  return if number < 0
  count_up_recursive(number - 1)
  puts number
end

count_up_recursive(-2)
count_up_recursive(0)
count_up_recursive(2)
