require 'date'

class Transaction
  attr_reader :date, :credit, :debit

  def initialize(type, amount, date = Date.today)
    @date = date.strftime('%m/%d/%Y')
    @credit, @debit = amount, 0 if type == 'credit'
    @debit, @credit = amount, 0 if type == 'debit'
  end
end
