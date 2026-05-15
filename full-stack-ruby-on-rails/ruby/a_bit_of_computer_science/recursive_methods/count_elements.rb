def count_elements(array)
  return 0 if array.empty?

  if array[0].is_a?(Array)
    return count_elements(array[0]) + count_elements(array[1..])
  else
    return 1 + count_elements(array[1..])
  end
end

p count_elements([1, [2, [3, 4]], 5])
p count_elements([1])
p count_elements([])
