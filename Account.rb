class Account
  attr_reader :balance, :transactions

  def initialize()
    @balance =  0
    @transactions = []
  end

  def deposit(amount)
    transaction = Transaction.new('deposit', amount)
    @transactions.push(transaction)
  end

  def withdraw(amount)
    transaction = Transaction.new('withdraw', amount)
    @transactions.push(transaction)
  end

end