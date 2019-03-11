require './account'

RSpec.describe 'Account' do
  it 'starts with 0' do
    account = Account.new()
    expect(account.balance).to eq 0
  end
  it 'allows a deposit' do
    account = Account.new()
    account.deposit(100.01)
    expect(account.transactions).to be_an Array
  end
end