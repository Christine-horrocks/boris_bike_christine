require 'DockingStation'

describe DockingStation do
  it 'when release_bike method is called, it returns an instance of Bike class' do
    subject.dock Bike.new
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  it 'is possible to dock a bike to the DockingStation' do
    bike = Bike.new
    subject.dock bike
    expect(subject.bikes[0]).to eq(bike)
  end

  it 'raises an error when you try to get a bike from it but there are none available' do
    expect { subject.release_bike }.to raise_error 'No bikes available'
  end

  it 'raises an error when you try to dock a bike when it has reached capacity' do
    subject.DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error 'At capacity'
  end
  #
  # it 'has a default capacity of 20 bikes' do
  #   expect(subject.DEFAULT_CAPACITY).to eq 20
  # end
end
