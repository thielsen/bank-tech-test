require './account'

RSpec.describe 'deposit money' do
  it 'allows us to apply a deposit to our account' do
    account = Account.new()
    account.deposit(100.01)
    expect(account.balance).to eq 100.01
  end
end
