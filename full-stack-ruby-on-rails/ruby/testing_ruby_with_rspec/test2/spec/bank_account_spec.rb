require './lib/bank_account'

RSpec.describe BankAccount do
  let(:bank_account) { BankAccount.new }
  
  describe '#balance' do
    it 'bank account balance start with value Zero(0)' do
      expect(bank_account.balance).to eq(0)
    end
  end

  describe '#deposit' do
    it 'adds value to bank account balance' do
      expect(bank_account.deposit(10)).to eq(10)
    end
  end

  describe '#withdraw' do
    it 'subtracts value to banck account balance' do
      expect(bank_account.withdraw(5)).to eq(-5)
    end
  end
end

