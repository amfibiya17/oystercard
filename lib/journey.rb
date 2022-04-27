# class Journey
#  touch_in
#  touch_out
#  in_journey?
#  fare price

class Journey

  attr_reader :entry_station
  
  def initialize
    @entry_station = entry_station
  end

  def touch_in(station)
    #fail 'Insufficient funds' if @balance < MINIMUM_BALANCE
    @entry_station = station
  end

end