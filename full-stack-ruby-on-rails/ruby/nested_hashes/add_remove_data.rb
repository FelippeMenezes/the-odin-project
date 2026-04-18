p vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

p vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

p vehicles

p vehicles[:dave][:color] = "red"

p vehicles

p vehicles.delete(:blake)

p vehicles

p vehicles[:dave].delete(:color)

p vehicles
