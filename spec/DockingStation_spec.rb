require 'DockingStation'

# let (:bike) {double :bike}
  # it 'releases working bikes' do
    # allow(bike).to receive(:working?).and_return(true)
    # subject.dock(bike)
    # released_bike = subject.release_bike
    # expect(released_bike).to be_working
  # end


describe DockingStation do

  let (:bike) {double :bike}
    it 'releases working bikes' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end

  it 'when release_bike method is called, it returns an instance of Bike class' do
    subject.dock(bike)
     expect(subject.release_bike).to eq(bike)
  end

  it 'is possible to dock a bike to the DockingStation' do

    bike = double(:bike)
    subject.dock bike
    expect(subject.bikes[0]).to eq(bike)
  end

  it 'raises an error when you try to get a bike from it but there are none available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error when you try to dock a bike when it has reached capacity' do
    subject.capacity.times { subject.dock double(:bike) }
    expect { subject.dock double(:bike) }.to raise_error 'At capacity'
  end

  it 'allows the user to set a capacity instance variable when DockingStation.new is called.' do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq(30)
  end

   it 'has a default capacity of 20 bikes' do
     expect(subject.capacity).to eq 20
   end
end
