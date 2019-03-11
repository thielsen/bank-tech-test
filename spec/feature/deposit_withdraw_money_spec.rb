require './account'

RSpec.describe 'deposit money' do

  it 'allows us to apply a deposit to our account' do
    account = Account.new()
    account.credit(100.01)
    expect(account.transactions).to be_an Array
  end

  it 'allows us to withdraw from our account' do
    account = Account.new()
    account.debit(99.09)
    expect(account.transactions).to be_an Array
  end

end
