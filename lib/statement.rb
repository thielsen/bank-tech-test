class Statement
  STATEMENT_HEADER = "#{sprintf('%14s', 'DATE')} ||#{sprintf('%14s', 'CREDIT')} ||#{sprintf('%14s', 'DEBIT')} ||#{sprintf('%14s', 'BALANCE')}\n"

  def printout(account)
    balance = 0
    output = STATEMENT_HEADER
    account.transactions.each do |transaction|
      output += "#{sprintf('%14s', transaction.date)} ||#{sprintf('%14.2f', transaction.credit)} ||#{sprintf('%14.2f', transaction.debit)} ||#{sprintf('%14.2f', (balance + transaction.credit - transaction.debit))}\n"
      balance += transaction.credit - transaction.debit
    end
    output
  end
end
