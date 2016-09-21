require_relative 'bank_account'

RSpec.describe BankAccount do

	it 'Has de ammount checking' do
		bank_account1 = BankAccount.new(100,200,300)
		expect(bank_account1.checking).to eq(200)
	end
	it 'has the total amount of the accounts' do
		bank_account2 = BankAccount.new(100,200,300)
		expect(bank_account2.total).to eq(600)
	end
	it 'has a method to widdral cash from checking' do
		bank_account3 = BankAccount.new(100,200,300)
		expect(bank_account3.withdraw_checking(50)).to eq(150)
	end
	it 'give error if withdraw_checking is more than funds ' do
		bank_account4 = BankAccount.new(100,200,300)
		expect(bank_account4.withdraw_checking(250)).to eq(200)
	end
	it'raises error if some one tries to see amount of banck accounts'do
		bank_account5 = BankAccount.new(100,200,300)
		expect{bank_account5.no_of_bankaccount}.to raise_error(NoMethodError)
	end
	it 'raises error if some one tries to see intrest rate' do
		bank_account6 = BankAccount.new(100,200,300)
		expect{bank_account6.intrestrate(0,1)}.to raise_error(NoMethodError)
	end
	it 'raises errors if some one try to set attribute' do
		bank_account7 = BankAccount.new(100,200,300)
		expect{bank_account7.account_nummer(123)}.to raise_error(NoMethodError)
		expect{bank_account7.checking(123)}.to raise_error(ArgumentError)
		expect{bank_account7.savings(123)}.to raise_error(ArgumentError)
	end

end	