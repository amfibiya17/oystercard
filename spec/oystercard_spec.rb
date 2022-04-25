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

end