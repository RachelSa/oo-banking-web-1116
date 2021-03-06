class BankAccount

  attr_accessor :status, :deposit_amt, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    end

  def display_balance
    "Your balance is $#{@balance}."
  end

   def deposit(deposit_amt)
    @balance += deposit_amt
   end 

   def valid?
    @status == "open" && @balance > 0
   end

   def close_account
    @status = "closed"
   end

   

end
