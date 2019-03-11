require_relative '../../lib/statement'

RSpec.describe 'statement' do
  it 'prints out the template when given no transactions' do
    statement = Statement.new
    account_dbl = double
    allow(account_dbl).to receive(:transactions).and_return([])
    expect(statement.printout(account_dbl)).to eq "          DATE ||        CREDIT ||         DEBIT ||       BALANCE\n"
  end
end
