require './account'

RSpec.describe 'deposit money' do
  it 'allows us to apply a deposit to our account' do
    account = Account.new()
    account.deposit(100.01)
    expect(account.transactions).to be_an Array
  end
end
