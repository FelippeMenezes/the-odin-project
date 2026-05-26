def count_up_recursive(number)
  return if number.negative?
  count_up_recursive(number - 1)
  puts number
end

count_up_recursive(2)
