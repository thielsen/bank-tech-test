require './account'
require './statement'

RSpec.describe 'deposit money' do

  it 'allows us to use the bank and print a statement' do
    account = Account.new()
    account.credit(1000.00, Date.new(2012,01,10))
    account.credit(2000.00, Date.new(2012,01,13))
    account.debit(500.00, Date.new(2012,01,14))
    statement = Statement.new()
    expect(statement.printout(account)).to eq ''
  end

end