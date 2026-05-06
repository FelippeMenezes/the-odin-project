require_relative 'lib/bank_account'

bank_account = BankAccount.new
p bank_account
p bank_account.balance

bank_account.deposit(15)
p bank_account.balance

bank_account.withdraw(12)
p bank_account.balance
