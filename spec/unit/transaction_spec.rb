require './transaction'

RSpec.describe 'transaction' do
  it 'can create new deposit transaction' do
    transaction = Transaction.new('deposit', 100.01)
    expect(transaction.type).to eq 'deposit'
    expect(transaction.amount).to eq 100.01
  end
end