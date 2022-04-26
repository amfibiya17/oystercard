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
      # expect(subject.top_up(4)).to eq 4 
      expect{subject.top_up(4)}.to change{ subject.balance }.by 4

    end

    it 'has a limit of maximum balance' do
      maximum_balance = Oystercard::MAXIMUM_BALANCE
      subject.top_up(maximum_balance)
      expect{subject.top_up(1)}.to raise_error "You've reached a maximum top up of £#{maximum_balance}."
    end
  end

  describe '#deduct' do
    it 'responds to deduct' do
      expect(subject).to respond_to(:deduct).with(1).argument
    end

    it 'can deduct money from the balance' do
      subject.top_up(10)
      # expect(subject.deduct(4)).to eq 6
      expect{subject.deduct(4)}.to change{ subject.balance }.by -4
    end
    
  end

  describe '#touch_in' do
    it 'responds to touch_in method' do
      expect(subject).to respond_to(:touch_in)
    end

    it 'returns true when touch_in' do
      subject.top_up(1)
      expect(subject.touch_in).to be true
    end

    it 'for in_journey? returns true' do
      subject.top_up(1)
      subject.touch_in
      # expect(subject.in_journey?).to be true
      expect(subject).to be_in_journey # predicate matcher
    end

    it 'raises an error when the balance is less than £1' do
      expect{subject.touch_in}.to raise_error 'Insufficient funds'
    end
  end

  describe '#touch_out' do
    it 'responds to touch_out method' do
      expect(subject).to respond_to(:touch_out)
    end

    # it 'returns true when touch_out' do
    #   expect(subject.touch_out).to be true
    # end

    it 'in_journey? returns false' do
      subject.touch_out
      # expect(subject.in_journey?).to be true
      expect(subject).not_to be_in_journey # predicate matcher
    end

    it 'takes correct amount deducted from the card when the journey is complete' do
      subject.top_up(10)
      subject.touch_in
      subject.touch_out
      expect{subject.touch_out}.to change{subject.balance}.by(-Oystercard::JOURNEY_COST)
    end
  end

  describe '#in_journey?' do
    it 'responds to in_journey? method' do
      expect(subject).to respond_to(:in_journey?)
    end
  end

end