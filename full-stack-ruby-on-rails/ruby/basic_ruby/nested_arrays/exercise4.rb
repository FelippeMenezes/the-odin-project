pedidos = [
  { cliente: "Ana", valor: 320.0, status: "pago" },
  { cliente: "Bruno", valor: 150.0, status: "pendente" },
  { cliente: "Carla", valor: 480.0, status: "pago" },
  { cliente: "Diego", valor: 90.0, status: "pendente" },
  { cliente: "Eva", valor: 210.0, status: "pago" }
]

pedidos.each_with_index do |pedido, index|
  if pedido[:status] == "pago"
    if pedido[:valor] > 300
      puts "[Pedido ##{index + 1}] #{pedido[:cliente]} - R$ #{pedido[:valor]} ⚠️ valor alto"
    else
      puts "[Pedido ##{index + 1}] #{pedido[:cliente]} - R$ #{pedido[:valor]}"
    end
  end
end
