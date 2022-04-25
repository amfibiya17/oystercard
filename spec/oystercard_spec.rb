require 'oystercard'

describe Oystercard do
  
  describe '#balance' do
    it 'initializes a balance' do
      expect(subject.balance).to eql(0)
    end
  end

end