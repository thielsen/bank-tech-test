class Statement

  def printout(account)
    balance = 0
    output = "   DATE       ||   CREDIT   ||   DEBIT   ||   BALANCE   \n"
    account.transactions.each do | transaction |
      output += "  #{transaction.date}  ||      #{transaction.credit}||          #{transaction.debit}||    #{balance + transaction.credit - transaction.debit}\n"
      balance += transaction.credit - transaction.debit
    end
    output
  end
end
