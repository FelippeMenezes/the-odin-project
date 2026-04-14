grade = 'F'

did_i_pass = case grade
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

puts did_i_pass

grade = 'D'

case grade
when 'A'
  puts "You're a genius"
when 'D'
  puts "Better luck next time"
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
end
