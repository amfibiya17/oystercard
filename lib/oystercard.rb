class Oystercard

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  JOURNEY_COST = 2

  attr_reader :balance

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(money)
    fail "You've reached a maximum top up of £#{MAXIMUM_BALANCE}." if 
    (@balance + money) > MAXIMUM_BALANCE
    @balance += money
  end

  
  def touch_in
    fail 'Insufficient funds' if @balance < MINIMUM_BALANCE
    @in_journey = true
  end
  
  def touch_out
    deduct(JOURNEY_COST)
    @in_journey = false
  end
  
  def in_journey?
    @in_journey
  end
  
  private

  def deduct(money)
    @balance -= money
  end

  # def no_money?
  #   @balance < MINIMUM_BALANCE
  # end

end