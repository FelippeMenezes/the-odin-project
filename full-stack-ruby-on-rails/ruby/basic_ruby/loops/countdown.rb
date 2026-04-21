x = 0
while x < 5
  y = x * x
  x += 1
end

puts y

# x = 0

# 3.times do
#   y = x * x
#   x += 1
# end

# puts y

# Erro - "y" foi declarado dentro do bloco do método "times",
# Ela apenas existe dentro do bloco, seu escopo é o bloco onde foi criada.
#
# No while, não é criado um bloco, por isso "y" consegue ser acessada.
