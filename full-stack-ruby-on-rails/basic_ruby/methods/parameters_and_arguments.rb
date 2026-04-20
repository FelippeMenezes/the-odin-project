def greet(name)
  "Hello, " + name + "!"
end

puts greet("Felippe")

def greeting(name = "stranger")
  "Hello, " + name + "!"
end

puts greeting("Felippe")
puts greeting
