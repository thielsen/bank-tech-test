require './account'

RSpec.describe 'Account' do
  it 'starts with no transactions' do
    account = Account.new
    expect(account.transactions).to eq []
  end

  it 'allows a credit' do
    account = Account.new
    account.credit(100.01)
    expect(account.transactions[0].credit).to eq 100.01
  end

  it 'allows a debit' do
    account = Account.new
    account.debit(100.01)
    expect(account.transactions[0].debit).to eq 100.01
  end
end
