class Statement
  STATEMENT_HEADER = "          DATE ||" +
                     "        CREDIT ||" +
                     "         DEBIT ||" +
                     "       BALANCE\n"

  def printout(account)
    balance = 0
    output = STATEMENT_HEADER
    account.transactions.each do |transaction|
      transaction_total = transaction.credit - transaction.debit
      output += statement_line(transaction.date, transaction.credit, 
                               transaction.debit, (balance + transaction_total))
      balance += transaction_total
    end
    output
  end

private

  def statement_line(date, credit, debit, balance)
    "#{format_text(date)} ||#{format_currency(credit)} ||" +
    "#{format_currency(debit)} ||#{format_currency(balance)}\n"
  end

  def format_currency(input)
    sprintf('%14.2f', input)
  end

  def format_text(input)
    sprintf('%14s', input)
  end
end
