class BankAccount
  attr_reader :balance, :owner

  def initialize(owner, balance = 0)
    @owner = owner
    @balance = balance
  end

  def empty?
    @balance == 0
  end

  def positive?
    @balance > 0
  end
end
