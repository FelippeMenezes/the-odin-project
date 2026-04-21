require 'pry-byebug'

def isogram?(string)
  original_length = string.length
  string_array = string.downcase.split

  # binding.pry

  unique_length = string_array.uniq.length
  original_length == unique_length
end

isogram?("Odin")

require 'pry-byebug'

def yell_greeting(string)
  name = string

  binding.pry

  name = name.upcase
  greeting = "WASSAP, #{name}!"
  puts greeting
end

yell_greeting("bob")

def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
# decorate_greeting(1)
