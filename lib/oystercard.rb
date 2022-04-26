class Oystercard

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  JOURNEY_COST = 2

  attr_reader :balance, :entry_station

  def initialize
    @balance = 0
    # @in_journey = false
    @entry_station = nil
  end

  def top_up(money)
    fail "You've reached a maximum top up of £#{MAXIMUM_BALANCE}." if 
    (@balance + money) > MAXIMUM_BALANCE
    @balance += money
  end

  
  def touch_in(station)
    fail 'Insufficient funds' if @balance < MINIMUM_BALANCE
    @entry_station = station
    # @in_journey = entry_station
  end
  
  def touch_out
    deduct(JOURNEY_COST)
    # @in_journey = false
    @entry_station = nil
  end
  
  def in_journey?
    !!entry_station
  end
  
  private

  def deduct(money)
    @balance -= money
  end

  # def no_money?
  #   @balance < MINIMUM_BALANCE
  # end

end