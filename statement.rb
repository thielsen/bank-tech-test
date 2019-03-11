class Statement

  def printout(account)
    balance = 0
    output = "   DATE       ||   CREDIT   ||   DEBIT   ||   BALANCE   \n"
    account.transactions.each do | transaction |
      output += "  #{transaction.date}  ||      #{sprintf('%.2f', transaction.credit)}||          #{sprintf('%.2f', transaction.debit)}||    #{sprintf('%.2f', (balance + transaction.credit - transaction.debit))}\n"
      balance += transaction.credit - transaction.debit
    end
    output
  end
end
