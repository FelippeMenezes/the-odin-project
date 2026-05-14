def count_down_recursive(number)
  if number <= 0 
    puts number
  else
    puts (number)
    count_down_recursive(number - 1)
  end
end

count_down_recursive(3)
