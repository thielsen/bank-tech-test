require_relative '../../lib/account'

RSpec.describe Account do
  before(:each) do
    @account = described_class.new
    Timecop.freeze(Date.today)
  end

  it 'starts with no transactions' do
    expect(@account.transactions).to eq []
  end

  it 'allows a credit' do
    @account.credit(100.01)
    expect(@account.transactions[0].credit).to eq 100.01
    expect(@account.transactions[0].date).to eq Date.today.strftime('%m/%d/%Y')
  end

  it 'allows a debit' do
    @account.debit(100.01)
    expect(@account.transactions[0].debit).to eq 100.01
    expect(@account.transactions[0].date).to eq Date.today.strftime('%m/%d/%Y')
  end
end
