times = ["Flamengo", "Vasco", "Botafogo", "Fluminense", "Madureira", "Bangu"]

times.each_with_index { |time, index| puts "Posição #{index}: #{time}" if index.even?}
