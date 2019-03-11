require_relative '../../lib/transaction'

RSpec.describe 'transaction' do
  it 'can create new deposit transaction' do
    transaction = Transaction.new('credit', 100.01)
    expect(transaction.credit).to eq 100.01
    expect(transaction.debit).to eq 0
    expect(transaction.date).to eq Date.today.strftime('%m/%d/%Y')
  end

  it 'can create new withdrawal transaction' do
    transaction = Transaction.new('debit', 99.09)
    expect(transaction.debit).to eq 99.09
    expect(transaction.credit).to eq 0
    expect(transaction.date).to eq Date.today.strftime('%m/%d/%Y')
  end

  it 'can create a transaction with a past date' do
    transaction = Transaction.new('debit', 99.09, Date.new(2012, 02, 03))
    expect(transaction.debit).to eq 99.09
    expect(transaction.date).to eq '02/03/2012'
  end
end
