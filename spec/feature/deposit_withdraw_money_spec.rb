require './account'

RSpec.describe 'deposit money' do
  before(:each) do
    @account = Account.new
  end

  it 'allows us to apply a deposit to our account' do
    @account.credit(100.01)
    expect(@account.transactions).to be_an Array
  end

  it 'allows us to withdraw from our account' do
    @account.debit(99.09)
    expect(@account.transactions).to be_an Array
  end
end
