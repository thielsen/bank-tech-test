class Account
  attr_reader :balance, :transactions

  def initialize()
    @transactions = []
  end

  def credit(amount, date=Date.today)
    transaction = Transaction.new('credit', amount, date)
    @transactions.push(transaction)
  end

  def debit(amount, date=Date.today)
    transaction = Transaction.new('debit', amount, date)
    @transactions.push(transaction)
  end

end