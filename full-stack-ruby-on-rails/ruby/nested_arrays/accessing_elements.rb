teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

puts teacher_mailboxes[0][0]

puts teacher_mailboxes[1][0]

puts teacher_mailboxes[2][0]

puts teacher_mailboxes[0][-1]

puts teacher_mailboxes[-1][0]

puts teacher_mailboxes[-1][-2]

# puts teacher_mailboxes[3][0]
teacher_mailboxes.dig(3, 0)

puts teacher_mailboxes[0][4]
teacher_mailboxes.dig(0, 4)
