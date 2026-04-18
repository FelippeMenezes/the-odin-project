p vehicles = {
  alice: {year: 2019, make: "Toyota", model: "Corolla"},
  blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
  caleb: {year: 2020, make: "Honda", model: "Accord"}
}

p vehicles.select { |name, data| data[:year] >= 2020 }

p vehicles.collect { |name, data| name if data[:year] >= 2020 }

p vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact

p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
