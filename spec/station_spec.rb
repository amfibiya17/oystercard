require "station"

describe Station do

  # describe "#new" do
  #   it "returns name and zone" do
  #     expect(Station).to respond_to(:new).with(2).argument
  #   end
  # end

  subject {described_class.new(name: "Abc", zone: 111)}

  it 'knows name' do
    station = Station.new("Abc", 111)                      
    expect(station.name).to eq("Abc")              
  end                                                   

  it 'knows zone' do 
    station = Station.new("Abc", 111)                                                      
    expect(station.zone).to eq(111)                                 
  end

end