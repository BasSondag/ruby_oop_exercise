class BankAccount
	@@no_of_bankaccount = 0
	attr_accessor :savings, :checking, :deposit, :total
	def initialize( savings, checking, deposit)
		@account_nummer = rand(1000000000..9999999999)
		@savings = savings
		@checking = checking
		@deposit = deposit
		@@no_of_bankaccount += 1
		@no_of_bankaccount = @@no_of_bankaccount
		@intrestrate = 0.8
		a = @savings + @checking + @deposit
		@total = a
	end
	def deposit_checking(checking)
		@checking += checking
	end
	def deposit_saving(savings)
		@savings += savings
	end
	def withdraw_checking(checking)
		@checking -= checking
			if @checking < 0
				puts "Your checking balance is to LOW for the WITHDRAW" 
				@checking += checking
				@checking
			end
		@checking
	end
	def withdraw_saving(savings)
		@savings -= savings
		if @savings < 0
				puts"Your savings balance is to LOW for the WITHDRAW"
				@savings += savings
			end
	end
	def display_acounts
		puts "Your account_nummer: %s" % @account_nummer
		puts "Your total is balance: %s" % @total
		puts "your checking account balance: $%s" % @checking	
		puts "Your savings acount balance: $%s " % @savings
		puts "the intrest rate is: %s%" % @intrestrate
	end 
	def amount_bankacounts
		puts"total amount bankacounts: #{ @no_of_bankaccount}"
	end
end

