require './transaction'

RSpec.describe 'transaction' do
  it 'can create new deposit transaction' do
    transaction = Transaction.new('deposit', 100.01)
    expect(transaction.type).to eq 'deposit'
    expect(transaction.amount).to eq 100.01
    expect(transaction.date).to eq Date.today
  end
  it 'can create new withdrawal transaction' do
    transaction = Transaction.new('withdraw', 99.09)
    expect(transaction.type).to eq 'withdraw'
    expect(transaction.amount).to eq 99.09
    expect(transaction.date).to eq Date.today
  end
end