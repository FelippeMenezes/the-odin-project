# frozen_string_literal: true

def count_down(number)
  for i in number.downto(1)
    puts i
  end

  puts 'Hooray'
end

count_down(5)

def count_down_recursive(number)
  if number <= 0
    puts 'Hooray'
    return
  end

  puts number
  count_down(number - 1)
end

count_down_recursive(5)

def sum_range(number)
  total = 0

  number.downto(1) do |i|
    total += i
  end

  total
end

puts sum_range(5)

def sum_range_recursive(number, total = 0)
  return total if number <= 0

  sum_range_recursive(number - 1, total + number)
end

puts sum_range_recursive(5)
