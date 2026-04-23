empresa = {
  nome: "DevShop",
  times: [
    { time: "Backend",  devs: ["Felippe", "Carla", "Bruno"] },
    { time: "Frontend", devs: ["Ana", "Pedro", "João"]      },
    { time: "DevOps",   devs: ["Rita"]                      }
  ]
}

empresa[:times].select do | time |
  puts "#{time[:time]} tem #{time[:devs].length} devs"
end
