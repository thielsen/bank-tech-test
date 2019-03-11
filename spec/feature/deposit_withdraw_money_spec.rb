require_relative '../../lib/account'

RSpec.describe 'deposit money' do
  before(:each) do
    @account = Account.new
  end

  it 'allows us to apply a deposit to our account' do
    @account.credit(100.01)
    expect(@account.transactions[0].credit).to eq 100.01
  end

  it 'allows us to withdraw from our account' do
    @account.debit(99.09)
    expect(@account.transactions[0].debit).to eq 99.09
  end
end
