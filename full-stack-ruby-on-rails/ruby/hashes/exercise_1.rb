familia = {  tios: ["jose", "jairo", "isnard"],
            irmas: ["rachell", "lorota", "shenna"],
            irmaos: ["mauro","joaquim","henrique"],
            tias: ["olga", "josaura", "jacira"]
          }

todos_irmaos = familia.select do |k, v|
  k == :irmaos || k == :irmas
end

puts todos_irmaos.values
