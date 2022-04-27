class Oystercard

  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  JOURNEY_COST = 2

  attr_reader :balance, :entry_station, :exit_station, :journey
  attr_accessor :journeys

  def initialize
    @balance = 0
    @entry_station = nil
    @journeys = []
    @journey = {}
  end

  def top_up(money)
    fail "You've reached a maximum top up of £#{MAXIMUM_BALANCE}." if 
    (@balance + money) > MAXIMUM_BALANCE
    @balance += money
  end

  def touch_in(station)
    fail 'Insufficient funds' if @balance < MINIMUM_BALANCE
    @entry_station = station
  end
  
  def touch_out(station)
    deduct(JOURNEY_COST)
    @journey[:entry_station] = @entry_station
    @entry_station = nil
    @exit_station = station
    @journey[:exit_station] = @exit_station
    @journeys << @journey
  end
  
  def in_journey?
    !!entry_station
  end
  
  private

  def deduct(money)
    @balance -= money
  end

end