require 'oystercard'

describe Oystercard do
  
  describe '#balance' do
    it 'initializes a balance' do
      expect(subject.balance).to eql(0)
    end
  end

  describe '#top_up' do
    it 'responds to top_up' do
      expect(subject).to respond_to(:top_up).with(1).argument
    end

    it 'can add money to the balance' do
      expect(subject.top_up(4)).to eq 4 
    end
  end

end