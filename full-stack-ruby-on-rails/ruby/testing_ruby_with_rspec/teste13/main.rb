require_relative 'lib/password_validator'

password_validator1 = PasswordValidator.new('1234abcd')
p password_validator1
p password_validator1.valid?
p password_validator1.errors

password_validator2 = PasswordValidator.new('12345678')
p password_validator2
p password_validator2.valid?
p password_validator2.errors
