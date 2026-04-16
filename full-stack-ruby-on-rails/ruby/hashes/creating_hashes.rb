my_hash = {
  "a random word" => "ahoy",
  "Dorothy's math test score" => 94,
  "an array" => [1, 2, 3],
  "an empty hash within a hash" => {}
}

puts my_hash



another_hash = Hash.new

puts another_hash


hash = { 9 => "nine", :six => 6 }

puts hash

old_syntax_hash = {:name => 'felippe'}

puts old_syntax_hash

new_hash = {name: 'felippe'}

puts new_hash

string_key = {"height" => "1,85m"}
puts string_key

integer_key = {1 => "one"}
puts integer_key

float_key = {45.324 => "forty-five point something"}
puts float_key

hash_key = {{key: "key"} => "hash as a key"}
puts hash_key
