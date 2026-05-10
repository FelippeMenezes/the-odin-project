require_relative 'lib/bank_account'

bank_account_will = BankAccount.new('Will')
p bank_account_will
p bank_account_will.empty?
p bank_account_will.positive?

bank_account_phill = BankAccount.new('Phill', 99999)
p bank_account_phill
p bank_account_phill.empty?
p bank_account_phill.positive?


