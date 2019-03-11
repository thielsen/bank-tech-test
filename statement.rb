class Statement

  def initialize(transactions)
    @transactions = transactions
    @statement = {}
  end

  # def create_statement
  #   @transactions.each |transaction| do
  #     statement_transaction = {}
  #     statement_transaction[:date] = transaction.date.strftime(%m/%d/%Y)
  #     if statement_transaction[:type] = 'withdrawal'
  #       statement_transaction[:debit] = transaction.amount

      
  #   end
  # end

  def printout
    output = '   DATE   ||   CREDIT   ||   DEBIT   ||   BALANCE   \n'
    end
  end
end
