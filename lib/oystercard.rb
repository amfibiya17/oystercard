class Oystercard

  MAXIMUM_BALANCE = 90
  attr_reader :balance

  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(money)
    fail "You've reached a maximum top up of £#{MAXIMUM_BALANCE}." if 
    (@balance + money) > MAXIMUM_BALANCE
    @balance += money
  end

  def deduct(money)
    @balance -= money
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use = false
  end

  def in_journey?
    @in_use
  end

end