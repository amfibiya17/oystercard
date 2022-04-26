require "station"

describe Station do

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