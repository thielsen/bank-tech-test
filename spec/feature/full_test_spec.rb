require_relative '../../lib/statement'
require_relative '../../lib/account'

RSpec.describe 'deposit money' do

  it 'allows us to use the bank and print a statement' do
    account = Account.new
    account.credit(1000.00, Date.new(2012, 01, 10))
    account.credit(2000.00, Date.new(2012, 01, 13))
    account.debit(500.00, Date.new(2012, 01, 14))
    statement = Statement.new
    expect(statement.printout(account)).to eq "          DATE ||        CREDIT ||" +
                                              "         DEBIT ||       BALANCE\n" +
                                              "    01/10/2012 ||       1000.00 ||" +
                                              "          0.00 ||       1000.00\n" +
                                              "    01/13/2012 ||       2000.00 ||" +
                                              "          0.00 ||       3000.00\n" +
                                              "    01/14/2012 ||          0.00 ||" +
                                              "        500.00 ||       2500.00\n"
  end
end
