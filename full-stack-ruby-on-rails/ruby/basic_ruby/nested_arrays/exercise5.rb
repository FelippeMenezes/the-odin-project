vendas = [
  { dia: "Segunda", valor: 1200.0 },
  { dia: "Terça", valor: 850.0 },
  { dia: "Quarta", valor: 1950.0 },
  { dia: "Quinta", valor: 430.0 },
  { dia: "Sexta", valor: 2100.0 }
]

# vendas.each_with_index do |venda, index|
# variacao_dia_anterior = vendas[index - 1 ][:valor] < venda[:valor] ? " (📈 +R$ #{(venda[:valor] - vendas[index - 1][:valor])} em relação ao dia anteriror)" : " (📉 -R$ #{(vendas[index - 1][:valor] - venda[:valor])} em relação ao dia anteriror)"

#   unless index > 0
#     puts "Dia #{index + 1} - #{venda[:dia]}: R$ #{venda[:valor]}"
#   else
#     puts "Dia #{index + 1} - #{venda[:dia]}: R$ #{venda[:valor]}#{variacao_dia_anterior}"
#   end
# end

vendas.each_with_index do |venda, index|
  if index == 0
    puts "Dia #{index + 1} - #{venda[:dia]}: R$ #{venda[:valor]}"
    next
  end

  variacao = venda[:valor] - vendas[index - 1][:valor]
  tendencia = variacao > 0 ? "📈 +R$" : "📉 -R$"
  puts "Dia #{index + 1} - #{venda[:dia]}: R$ #{venda[:valor]} (#{tendencia} #{variacao} em relação ao dia anterior)"
end
