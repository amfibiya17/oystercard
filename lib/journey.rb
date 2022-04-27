# class Journey
#  start_journey
#  finish_journey
#  fare price
#  penalty_charge

require 'oystercard'

class Journey

  JOURNEY_COST = 2
  PENALTY = 6

  def start_journey

    true

  end

  def end_journey

    true

  end

  def fare

    if start_journey && end_journey
      JOURNEY_COST
    else
      PENALTY
    end

  end

end
