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
      output += "#{format_text(transaction.date)} ||" +
                "#{format_currency(transaction.credit)} ||" +
                "#{format_currency(transaction.debit)} ||" +
                "#{format_currency(balance + transaction_total)}\n"
      balance += transaction_total
    end
    output
  end

private

  def format_currency(input)
    sprintf('%14.2f', input)
  end

  def format_text(input)
    sprintf('%14s', input)
  end
end
