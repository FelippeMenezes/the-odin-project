def count_down_recursive_even(number)
  if number <= 0
    puts 0
  else
    if number.odd?
      count_down_recursive_even(number - 1)
    else
      puts number
      count_down_recursive_even(number - 2)
    end
  end
end

# count_down_recursive_even(0)

# count_down_recursive_even(1)

count_down_recursive_even(9)
