require 'date'

class Transaction
  attr_reader :date, :credit, :debit

  def initialize(type, amount, date=Date.today)
    @date = date.strftime('%m/%d/%Y')
    @credit = amount if type == 'credit'
    @debit = amount if type == 'debit'
  end

end