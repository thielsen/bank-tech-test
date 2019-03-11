class Statement
  STATEMENT_HEADER = "   DATE       ||   CREDIT   ||   DEBIT   ||   BALANCE   \n"

  def printout(account)
    balance = 0
    output = STATEMENT_HEADER
    account.transactions.each do |transaction|
      output += "  #{transaction.date}  ||      #{sprintf('%.2f', transaction.credit)}||          #{sprintf('%.2f', transaction.debit)}||    #{sprintf('%.2f', (balance + transaction.credit - transaction.debit))}\n"
      balance += transaction.credit - transaction.debit
    end
    output
  end
end
