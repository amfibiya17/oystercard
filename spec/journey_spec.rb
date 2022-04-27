require 'journey'
require 'oystercard'
require 'station'

describe Journey do

  let (:oystercard) { Oystercard.new }
  let (:entry_station) { :entry_station }
  let (:exit_station) { :exit_station }

  describe "start journey" do
    
    it "Journey responds to start_journey" do
      
      expect(subject).to respond_to(:start_journey)

    end

    it "returns true when a journey has begun" do

      oystercard.top_up(10)
      oystercard.touch_in(:entry_station)
      
      expect(subject.start_journey).to eq true

    end

  end

  describe "end journey" do
    
    it "Journey responds to end_journey" do
      
      expect(subject).to respond_to(:end_journey)

    end

    it "returns true when a journey has ended" do

      oystercard.top_up(10)
      oystercard.touch_in(:entry_station)
      oystercard.touch_out(:exit_station)
      
      expect(subject.end_journey).to eq true

    end

  end

  describe "calculate fares" do

    it "fare returns minimum fare for a valid journey" do
      
      oystercard.top_up(10)
      oystercard.touch_in(:entry_station)
      oystercard.touch_out(:exit_station)

      expect(subject.fare).to eq Journey::JOURNEY_COST

    end

    it "fare returns PENALTY for a valid journey" do

      allow(subject).to receive(:end_journey).and_return(false)

      expect(subject.fare).to eq Journey::PENALTY

    end

  end

end
