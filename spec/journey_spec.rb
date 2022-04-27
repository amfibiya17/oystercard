require 'journey'
require 'oystercard'
require 'station'

describe Journey do

  describe '#touch_in' do
    let (:station){ double :station }
    let (:oystercard){ Oystercard.new }
    let (:entry_station){ double :entry_station }
    it 'stores the entry station' do
      oystercard.top_up(5)
      station = "A"
      subject.touch_in(station)
      expect(subject.entry_station).to eq station
    end
  end


end